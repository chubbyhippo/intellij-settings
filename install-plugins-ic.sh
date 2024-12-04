#!/usr/bin/env sh

cmd=idea
if uname | grep -q "^MINGW"; then
  cmd="$HOME"/AppData/Local/JetBrains/Toolbox/scripts/idea.cmd
fi

$cmd installPlugins \
"Builder Generator" \
"Lombook Plugin" \
"String Manipulation" \
IdeaVIM \
StringToolsPlugin \
com.fwdekker.randomness \
com.github.camork.fileExpander \
dev.turingcomplete.intellijdevelopertoolsplugins \
eu.theblob42.idea.whichkey \
me.bechberger.jfrplugin \
mobi.hsz.idea.gitignore \
nl.bryanderidder.regexrenamefiles \
org.jetbrains.jumpToLine \
org.sonarlint.idea
