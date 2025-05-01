#!/usr/bin/env sh

cmd=idea
if uname | grep -q "^MINGW"; then
  cmd=idea64
fi

$cmd installPlugins \
IdeaVIM \
com.intellij.ml.llm \
com.github.camork.fileExpander \
com.joshestein.ideavim-quickscope \
com.julienphalip.ideavim.peekaboo \
eu.theblob42.idea.whichkey
