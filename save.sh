#!/usr/bin/env sh

# config paths
for config_path in \
"$HOME"/.config/JetBrains/IdeaIC* \
"$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
"$HOME"/AppData/Roaming/JetBrains/IdeaIC* \
"$HOME"/.config/JetBrains/IntelliJIdea* \
"$HOME"/Library/Application\ Support/JetBrains/IntelliJIdea* \
"$HOME"/AppData/Roaming/JetBrains/IntelliJIdea*

do
  echo "$config_path"
  if [ -d "$config_path" ]; then
    # save code styles
    cat "$config_path"/codestyles/Default.xml > ./config/codestyles/Default.xml

    # save keymaps
    cat "$config_path"/keymaps/chubbyhippo.xml > ./config/keymaps/chubbyhippo.xml

    # save options
    cat "$config_path"/options/colors.scheme.xml > ./config/options/colors.scheme.xml
    cat "$config_path"/options/editor.xml > ./config/options/editor.xml
    cat "$config_path"/options/laf.xml > ./config/options/laf.xml
    cat "$config_path"/options/postfixTemplates.xml > ./config/options/postfixTemplates.xml
    cat "$config_path"/options/projectView.xml > ./config/options/projectView.xml
    cat "$config_path"/options/mac/keymap.xml > ./config/options/mac/keymap.xml
    cat "$config_path"/options/windows/keymap.xml > ./config/option/windows/keymap.xml
    cat "$config_path"/options/ui.lnf.xml > ./config/options/ui.lnf.xml

    # save templates
    cat "$config_path"/templates/java.xml > ./config/templates/java.xml

  fi
done