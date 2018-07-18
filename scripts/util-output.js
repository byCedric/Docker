'use strict';

const chalk = require('chalk');

/**
 * Log an informative message.
 * This is prefixed with a gray `>` symbol.
 *
 * @param  {...String} info
 * @return {void}
 */
const logInfo = (...info) => console.log(chalk`{gray >} ${info.join('\n')}`);

/**
 * Log an error with stack.
 * The output is prefixed with a red `!` symbol.
 *
 * @param  {...String} error
 * @return {void}
 */
const logError = error => console.error(chalk`{red !}`, error);

module.exports = {
	logInfo,
	logError,
};
