#!/usr/bin/env sh

# configs
for config_path in \
  "$HOME"/.config/JetBrains/IdeaIC* \
  "$HOME"/.config/JetBrains/IntelliJIdea* \
  "$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
  "$HOME"/Library/Application\ Support/JetBrains/IntelliJIdea* \
  "$HOME"/AppData/Roaming/JetBrains/IdeaIC* \
  "$HOME"/AppData/Roaming/JetBrains/IntelliJIdea*; do
  if [ -d "$config_path" ]; then
  echo "$config_path"

    # install keymaps
    mkdir -p "$config_path/keymaps"
    cp -frv "config/keymaps"/* "$config_path/keymaps"

    # install options
    mkdir -p "$config_path/options"
    cp -frv "config/options"/* "$config_path/options"

  fi
done
