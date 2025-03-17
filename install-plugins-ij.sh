#!/usr/bin/env sh

cmd=idea
if uname | grep -q "^MINGW"; then
  cmd="$HOME"/AppData/Local/JetBrains/Toolbox/scripts/idea.cmd
fi

$cmd installPlugins \
IdeaVIM \
com.intellij.ml.llm \
com.github.camork.fileExpander \
com.joshestein.ideavim-quickscope \
com.julienphalip.ideavim.peekaboo \
eu.theblob42.idea.whichkey

curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc
