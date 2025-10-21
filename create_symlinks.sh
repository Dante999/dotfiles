#!/bin/bash

set -o errexit
set -o nounset

declare -A symlink_map

symlink_map["vim/vim"]="${HOME}/.vim"
symlink_map["vim/vimrc"]="${HOME}/.vimrc"
symlink_map["nvim"]="${HOME}/.config/nvim"

for key in "${!symlink_map[@]}"; do
	symlink_source="${PWD}/${key}"
	symlink_file="${symlink_map[${key}]}"

	if [[ -e ${symlink_file} || -L ${symlink_file} ]]; then
		echo -n "    file ${symlink_file} already exists. Replace? [y/n]: "
		read -r ans

		if [[ "${ans}" == "y" ]]; then
			echo "    deleting ${symlink_file}"
			rm -r ${symlink_file}
			echo "    creating symlink ${symlink_file} -> ${symlink_source}"
			ln -s ${symlink_source} ${symlink_file}
		fi
	else
		echo "    creating symlink ${symlink_file} -> ${symlink_source}"
		ln -s ${symlink_source} ${symlink_file}
	fi
done
