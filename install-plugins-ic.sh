#!/usr/bin/env sh

# plugins
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
izhangzhihao.rainbow.brackets.lite \
com.github.camork.fileExpander \
com.mituuz.fuzzier \
de.endrullis.idea.postfixtemplates \
eu.theblob42.idea.whichkey \
krasa.CpuUsageIndicator \
me.bechberger.jfrplugin \
mobi.hsz.idea.gitignore \
indent-rainbow.indent-rainbow \
nl.bryanderidder.regexrenamefiles \
org.jetbrains.jumpToLine \
org.sonarlint.idea \
zielu.gittoolbox
