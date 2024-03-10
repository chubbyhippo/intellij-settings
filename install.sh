#!/usr/bin/env sh

for config_path in "$HOME"/.config/JetBrains/IdeaIC* \
                  "$HOME"/.config/JetBrains/IntelliJIdea* \
                  "$HOME"/Library/Application\ Support/JetBrains/IdeaIC* \
                  "$HOME"/Library/Application\ Support/JetBrains/IntelliJIdea* \
                  "$HOME"/AppData/Roaming/JetBrains/IdeaIC* \
                  "$HOME"/AppData/Roaming/JetBrains/IntelliJIdea*
do
  echo "$config_path"
  if [ -d "$config_path" ]; then
    # Install templates
    mkdir -p "$config_path/templates"
    cp -frv "config/templates"/* "$config_path/templates"
  fi
done
