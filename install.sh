#!/usr/bin/env sh

# configs
for config_path in \
	"$HOME"/.config/JetBrains/IdeaIC* \
	"$HOME"/.config/JetBrains/IntelliJIdea* \
	"$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
	"$HOME"/Library/Application\ Support/JetBrains/IntelliJIdea* \
	"$HOME"/AppData/Roaming/JetBrains/IdeaIC* \
	"$HOME"/AppData/Roaming/JetBrains/IntelliJIdea*; do
	echo "$config_path"
	if [ -d "$config_path" ]; then

		# install keymaps
		mkdir -p "$config_path/keymaps"
		cp -frv "config/keymaps"/* "$config_path/keymaps"

		# install settings
		mkdir -p "$config_path/options"
		cp -frv "config/options"/* "$config_path/options"

		# install templates
		mkdir -p "$config_path/templates"
		cp -frv "config/templates"/* "$config_path/templates"

	fi
done

# plugins
sh intall-plugins-ij.sh
