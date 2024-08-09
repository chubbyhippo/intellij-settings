#!/usr/bin/env sh

# plugins
cmd=idea
if uname | grep -q "^MINGW"; then
  cmd="$HOME"/AppData/Local/JetBrains/Toolbox/scripts/idea.cmd
fi

$cmd installPlugins \
IdeaVIM \
com.intellij.ml.llm \
eu.theblob42.idea.whichkey \
org.sonarlint.idea
