#!/usr/bin/env sh

# configs
for config_path in \
"$HOME"/.config/JetBrains/IdeaIC* \
"$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
"$HOME"/AppData/Roaming/JetBrains/IdeaIC* \

do
  echo "$config_path"
  if [ -d "$config_path" ]; then

    # install keymaps
    mkdir -p "$config_path/keymaps"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/keymaps/chubbyhippo.xml -o "$config_path/keymaps/chubbyhippo.xml"

    # install settings
    mkdir -p "$config_path/options"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/options/editor.xml -o "$config_path/options/editor.xml"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/options/project.default.xml -o "$config_path/options/project.default.xml"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/options/projectView.xml -o "$config_path/options/projectView.xml"
    mkdir -p "$config_path/options/mac"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/options/mac/keymap.xml -o "$config_path/options/mac/keymap.xml"
    mkdir -p "$config_path/options/windows"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/options/windows/keymap.xml -o "$config_path/options/windows/keymap.xml"

    # install templates
    mkdir -p "$config_path/templates"
    curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/config/templates/java.xml -o "$config_path/templates/java.xml"

  fi
done

# install .ideavimrc
curl -k https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc

# install plugins
curl -k https://raw.githubusercontent.com/chubbyhippo/Intellij-settings/main/install-plugins-ic.sh | /usr/bin/env sh
