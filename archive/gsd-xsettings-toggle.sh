!/bin/bash

result=$(ps ax|grep -v grep|grep gsd-xsettings)
if [ "$result" == "" ]; then
  eval "/usr/lib/gsd-xsettings &"
else
  eval "killall gsd-xsettings"
fi
