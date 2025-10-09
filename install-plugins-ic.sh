#!/usr/bin/env sh

cmd=idea
if uname | grep -q "^MINGW"; then
  if command -v idea.cmd >/dev/null 2>&1; then
    cmd=idea.cmd
  elif command -v idea64 >/dev/null 2>&1; then
    cmd=idea64
  else
    echo "Warning: neither idea.cmd nor idea64 found, falling back to idea"
  fi
fi

$cmd installPlugins \
"Builder Generator" \
"Lombook Plugin" \
"String Manipulation" \
IdeaVIM \
StringToolsPlugin \
com.fwdekker.randomness \
com.github.camork.fileExpander \
com.joshestein.ideavim-quickscope \
com.julienphalip.ideavim.peekaboo \
dev.flikas.idea.spring.boot.assistant.plugin \
dev.turingcomplete.intellijdevelopertoolsplugins \
eu.theblob42.idea.whichkey \
me.bechberger.jfrplugin \
mobi.hsz.idea.gitignore \
nl.bryanderidder.regexrenamefiles \
org.jetbrains.jumpToLine \
org.sonarlint.idea
