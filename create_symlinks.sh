#!/bin/bash

readonly dotfiles=(\
	'vim/vim' \
	'vim/vimrc' \
	'tmux/tmux.conf' \
)


for f in "${dotfiles[@]}"; do
	echo "==> ${f}"
	src="${PWD}/${f}"
	symlink="${HOME}/.${src##*/}"

	if [[ -e ${symlink} || -h ${symlink} ]]; then
		echo -n "    file ${symlink} already exists. Replace? [y/n]: "
		read -r ans

		if [[ "${ans}" == "y" ]]; then
			echo "    deleting ${symlink}"
			rm -r ${symlink}
			echo "    creating symlink ${symlink} -> ${src}"
			ln -s ${src} ${symlink}
		fi
	else
			echo "    creating symlink ${symlink} -> ${src}"
			ln -s ${src} ${symlink}
	fi
done

