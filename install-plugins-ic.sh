#!/usr/bin/env sh

cmd=idea
if uname | grep -q "^MINGW"; then
  cmd=idea.cmd
fi

$cmd installPlugins \
"Builder Generator" \
"Lombook Plugin" \
"String Manipulation" \
IdeaVIM \
StringToolsPlugin \
com.fwdekker.randomness \
com.github.camork.fileExpander \
com.julienphalip.ideavim.functiontextobj \
com.julienphalip.ideavim.peekaboo \
dev.flikas.idea.spring.boot.assistant.plugin
dev.turingcomplete.intellijdevelopertoolsplugins \
eu.theblob42.idea.whichkey \
me.bechberger.jfrplugin \
mobi.hsz.idea.gitignore \
nl.bryanderidder.regexrenamefiles \
org.jetbrains.jumpToLine \
org.sonarlint.idea
