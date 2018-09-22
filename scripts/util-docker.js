'use strict';

const execa = require('execa');
const { access, readdir } = require('fs').promises;
const { resolve } = require('path');

/**
 * Sort all images to build them in correct order.
 *
 * @param  {Object[]} images
 * @param  {String[]} priority
 * @return {Object[]}
 */
async function sortImages(images, priority) {
	return images.sort((a, b) => {
		const aIndex = priority.findIndex(name => a.name === name);
		const bIndex = priority.findIndex(name => b.name === name);

		if (aIndex < 0 || bIndex < 0) {
			return (bIndex + 1) - (aIndex + 1);
		}

		return aIndex - bIndex;
	});
}

/**
 * Find all versions from a single image.
 * This will test if there are `Dockerfile`s in the folder.
 *
 * @param  {String} path
 * @return {String[]}
 */
async function findImageVersions(path) {
	const items = await readdir(`${path}`);
	const dockerItems = await Promise.all(
		items.map(item => (
			access(`${path}/${item}/Dockerfile`)
				.then(() => item)
				.catch(() => '')
		))
	);

	return dockerItems.filter(item => !!item);
}

/**
 * Find all docker files in the images directory.
 * Optionally, you can provide a (starting) pattern and a priority list of images.
 *
 * @param  {String} pattern
 * @param  {String[]} priorities
 * @return {String[]}
 */
async function findImages(pattern = '', priorities = []) {
	const path = resolve(__dirname, '../images');
	const images = (await readdir(path)).filter(item => item.startsWith(pattern));
	const versions = await Promise.all(
		images.map(async (image) => ({
			name: image,
			path: `${path}/${image}`,
			versions: await findImageVersions(`${path}/${image}`),
		}))
	);

	return sortImages(versions, priorities);
}

/**
 * Build a (new) image and tag it with the `:new` name.
 * After this, you should push the image with a specific tag.
 *
 * @param  {Object} image
 * @param  {String} image.path
 * @param  {String} image.name
 * @param  {String} version
 * @return {void}
 */
async function buildImage(image, version) {
	await execa('docker', ['build', '-t', `bycedric/${image.name}:${version}-new`, `${image.path}/${version}`]);
}

/**
 * Push the (new) image to the registery using a specific tag.
 *
 * @param  {Object} image
 * @param  {String} image.path
 * @param  {String} image.name
 * @param  {Object} version
 * @param  {String} tag
 * @return {void}
 */
async function pushImage(image, version, tag) {
	await execa('docker', ['tag', `bycedric/${image.name}:${version}-new`, `bycedric/${image.name}:${tag}`]);
	await execa('docker', ['push', `bycedric/${image.name}:${tag}`]);
}

module.exports = {
	findImages,
	sortImages,
	buildImage,
	pushImage,
};
