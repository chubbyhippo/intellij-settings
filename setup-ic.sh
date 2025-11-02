#!/usr/bin/env sh

# config paths
for config_path in \
	"$HOME"/.config/JetBrains/IdeaIC* \
	"$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
	"$HOME"/AppData/Roaming/JetBrains/IdeaIC*; do
	if [ -d "$config_path" ]; then
		echo "$config_path"
		# install code styles
		mkdir -p "$config_path/codestyles"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/codestyles/Default.xml -o "$config_path/codestyles/Default.xml"

		# install keymaps
		mkdir -p "$config_path/keymaps"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/keymaps/chubbyhippo.xml -o "$config_path/keymaps/chubbyhippo.xml"

		# install options
		mkdir -p "$config_path/options"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/editor.xml -o "$config_path/options/editor.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/laf.xml -o "$config_path/options/laf.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/colors.scheme.xml -o "$config_path/options/colors.scheme.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/postfixTemplates.xml -o "$config_path/options/postfixTemplates.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/projectView.xml -o "$config_path/options/projectView.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/ui.lnf.xml -o "$config_path/options/ui.lnf.xml"
		mkdir -p "$config_path/options/mac"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/mac/keymap.xml -o "$config_path/options/mac/keymap.xml"
		mkdir -p "$config_path/options/windows"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/windows/keymap.xml -o "$config_path/options/windows/keymap.xml"

		# install templates
		mkdir -p "$config_path/templates"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/templates/javaJava.xml -o "$config_path/templates/javaJava.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/templates/javaJUnit.xml -o "$config_path/templates/javaJUnit.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/templates/javaMockito.xml -o "$config_path/templates/javaMockito.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/templates/javaSpring.xml -o "$config_path/templates/javaSpring.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/templates/javaWireMock.xml -o "$config_path/templates/javaWireMock.xml"

	fi
done

# install .ideavimrc
curl -k https://raw.githubusercontent.com/chubbyhippo/ideavimrc/refs/heads/main/.ideavimrc -o ~/.ideavimrc

# install plugins
curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/install-plugins-ic.sh | /usr/bin/env sh
