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
com.andrey4623.rainbowcsv \
com.fwdekker.randomness \
com.github.camork.fileExpander \
com.intellij.kubernetes \
com.intellij.plugin.adernov.powershell \
com.mituuz.fuzzier \
de.endrullis.idea.postfixtemplates \
eu.theblob42.idea.whichkey \
me.bechberger.jfrplugin \
mobi.hsz.idea.gitignore \
nl.bryanderidder.regexrenamefiles \
org.asciidoctor.intellij.asciidoc \
org.jetbrains.jumpToLine \
org.sonarlint.idea
