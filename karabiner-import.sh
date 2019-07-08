#!/bin/sh

# cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner
cli=/Applications/Karabiner-Elements.app/Contents/Karabiner-Elements

$cli set repeat.wait 23
/bin/echo -n .
$cli set repeat.initial_wait 200
/bin/echo -n .
$cli set remap.commandR2controlL 1
/bin/echo -n .
/bin/echo
