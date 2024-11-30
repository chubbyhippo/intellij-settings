#!/usr/bin/env sh

# plugins
cmd=idea
if uname | grep -q "^MINGW"; then
  cmd="$HOME"/AppData/Local/JetBrains/Toolbox/scripts/idea.cmd
fi

$cmd installPlugins \
IdeaVIM \
com.intellij.ml.llm \
com.github.camork.fileExpander \
com.joshestein.ideavim-quickscope \
eu.theblob42.idea.whichkey
