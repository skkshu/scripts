#!/bin/bash

result=$(ps ax|grep -v grep|grep screenkey)
if [ "$result" == "" ]; then
  # eval "screenkey --font-size medium --no-systray --bg-color white --font-color black --font SauceCodePro --opacity 0.3 --timeout 2 &"
  eval "screenkey --key-mode composed --font-size medium --no-systray --timeout 2 &"
else
  eval "killall screenkey"
fi
