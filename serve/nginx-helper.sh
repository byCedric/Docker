#!/bin/sh
PATH_TEMPLATE='/etc/nginx/conf.d/sites-template'
PATH_AVAILABLE='/etc/nginx/conf.d/sites-available'
PATH_ENABLED='/etc/nginx/conf.d/sites-enabled'

show_help() {
	echo ""
	echo -e "\tUsage: ngxsite <action> <site>"
	echo ""
	echo -e "\t\tA helper for easy NGINX site configuration"
	echo ""
	echo -e "\t\tTemplates are build from the 'sites-template' to the 'sites-available' folder."
	echo -e "\t\tAvailable sites are symbolic linked to 'sites-enabled' if they are enabled."
	echo ""
	echo -e "\t\t\t${PATH_TEMPLATE}"
	echo -e "\t\t\t${PATH_AVAILABLE}"
	echo -e "\t\t\t${PATH_ENABLED}"
	echo ""
	echo -e "\tAction:"
	echo -e "\t\t<e|enable> <site>\t\tEnable site, creating a symbolic link in 'sites-enabled' from 'sites-available'"
	echo -e "\t\t<d|disbale> <site>\t\tDisable a site, removing the symbolic link from 'sites-enabled'"
	echo -e "\t\t<t|template> <site>\tBuild the template from 'sites-template' to 'sites-available'"
	echo -e "\t\t<h|help|*>\t\tDisplay this help message"
	echo ""
	echo -e "\tSite:"
	echo -e "\t\tName of the file, with or without '.conf' suffix"
	echo ""
}

site_enable() {
	if [ ! -f "${PATH_AVAILABLE}/${1}" ]; then
		echo "Warning, site config not found! ${PATH_AVAILABLE}/${1}"
	fi

	if [ ! -f "${PATH_ENABLED}/${1}" ]; then
		ln -s "${PATH_AVAILABLE}/${1}" "${PATH_ENABLED}/${1}"
		echo "Site enabled: ${1}"
	else
		echo "Site already enabled: ${1}"
	fi
}

site_disable() {
	if [ ! -f "${PATH_AVAILABLE}/${1}" ]; then
		echo "Warning, site config not found! ${PATH_AVAILABLE}/${1}"
	fi

	if [ -f "${PATH_ENABLED}/${1}" ]; then
		rm "${PATH_ENABLED}/${1}"
		echo "Site disabled: ${1}"
	else
		echo "Site already disabled: ${1}"
	fi
}

site_template() {
	if [ -f "${PATH_TEMPLATE}/${1}" ]; then
		envsubst "$TEMPLATE_VARIABLES" < "${PATH_TEMPLATE}/${1}" > "${PATH_AVAILABLE}/${1}"
		echo "Site template built: ${1}"
	else
		echo "Site template not found! ${PATH_TEMPLATE}/${1}"
	fi
}

if [[ $1 == h* ]] || [[ ! $2 ]]; then
	show_help
else
	config="${2%.conf}.conf"

	if [ ! -w $PATH_AVAILABLE ] || [ ! -w $PATH_ENABLED ]; then
		echo "You don't have permission to do this. Try to run the command as root."
		exit
	fi

	config_available="${PATH_AVAILABLE}/${config}"
	config_enabled="${PATH_ENABLED}/${config}"
	config_template="${PATH_TEMPLATE}/${config}"

	case $1 in
		e|enable) site_enable $config;;
		d|disable) site_disable $config;;
		t|template)
			if [ $2 == "-a" ] || [ $2 == "--all" ]; then
				for file in "${PATH_TEMPLATE}/*.conf"; do
					site_template $(basename $file)
				done
			else
				site_template $config
			fi
		;;

		*) show_help;;
	esac
fi
