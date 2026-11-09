#!/usr/bin/env sh

# config paths
for config_path in \
  "$HOME"/.config/JetBrains/IdeaIC* \
  "$HOME"/.config/JetBrains/IntelliJIdea* \
  "$HOME"/AppData/Roaming/JetBrains/IdeaIC* \
  "$HOME"/AppData/Roaming/JetBrains/IntelliJIdea* \
  "$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
  "$HOME"/Library/Application\ Support/JetBrains/IntelliJIdea*; do
  if [ -d "$config_path" ]; then
    echo "$config_path"

    # save keymaps
    mkdir -p config/keymaps
    cp -f "$config_path"/keymaps/emacs.xml ./config/keymaps/emacs.xml

    # save options
    mkdir -p config/options
    cp -f "$config_path"/options/colors.scheme.xml ./config/options/colors.scheme.xml
    cp -f "$config_path"/options/editor.xml ./config/options/editor.xml
    cp -f "$config_path"/options/projectView.xml ./config/options/projectView.xml
    cp -f "$config_path"/options/ui-datetime.xml ./config/options/ui-datetime.xml
    cp -f "$config_path"/options/ui.lnf.xml ./config/options/ui.lnf.xml

  fi
done
