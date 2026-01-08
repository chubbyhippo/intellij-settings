#!/usr/bin/env sh

RAW_INTELLIJ_SETTINGS_URL="https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main"
RAW_IDEAVIM_URL="https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/ideavim"

# config paths
for config_path in \
  "$HOME"/.config/JetBrains/IntelliJIdea* \
  "$HOME"/Library/Application\ Support/JetBrains/IntelliJIdea* \
  "$HOME"/AppData/Roaming/JetBrains/IntelliJIdea*; do
  if [ -d "$config_path" ]; then
    echo "$config_path"
    # install code styles
    mkdir -p "$config_path/codestyles"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/codestyles/Default.xml" -o "$config_path/codestyles/Default.xml"

    # install keymaps
    mkdir -p "$config_path/keymaps"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/keymaps/chubbyhippo.xml" -o "$config_path/keymaps/chubbyhippo.xml"

    # install options
    mkdir -p "$config_path/options"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/editor.xml" -o "$config_path/options/editor.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/laf.xml" -o "$config_path/options/laf.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/colors.scheme.xml" -o "$config_path/options/colors.scheme.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/postfixTemplates.xml" -o "$config_path/options/postfixTemplates.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/projectView.xml" -o "$config_path/options/projectView.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/ui.lnf.xml" -o "$config_path/options/ui.lnf.xml"
    mkdir -p "$config_path/options/mac"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/mac/keymap.xml" -o "$config_path/options/mac/keymap.xml"
    mkdir -p "$config_path/options/windows"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/options/windows/keymap.xml" -o "$config_path/options/windows/keymap.xml"

    # install templates
    mkdir -p "$config_path/templates"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/templates/javaJava.xml" -o "$config_path/templates/javaJava.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/templates/javaJackson.xml" -o "$config_path/templates/javaJackson.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/templates/javaJUnit.xml" -o "$config_path/templates/javaJUnit.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/templates/javaMockito.xml" -o "$config_path/templates/javaMockito.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/templates/javaSpring.xml" -o "$config_path/templates/javaSpring.xml"
    curl -k "$RAW_INTELLIJ_SETTINGS_URL/config/templates/javaWireMock.xml" -o "$config_path/templates/javaWireMock.xml"

  fi
done

# install .ideavimrc
curl -k "$RAW_IDEAVIM_URL/.ideavimrc" -o ~/.ideavimrc

# install plugins
curl -s "$RAW_INTELLIJ_SETTINGS_URL/install-plugins-ij.sh" | /usr/bin/env sh
