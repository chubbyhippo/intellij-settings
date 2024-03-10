#!/usr/bin/env sh
#idea installPlugins krasa.CpuUsageIndicator zielu.gittoolbox IdeaVIM org.jetbrains.IdeaVim-EasyMotion indent-rainbow.indent-rainbow izhangzhihao.rainbow.brackets com.andrey4623.rainbowcsv com.fwdekker.randomness org.sonarlint.idea

for config_path in "$HOME"/.config/JetBrains/IdeaIC* \
                  "$HOME"/.config/JetBrains/IdeaIC* \
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
