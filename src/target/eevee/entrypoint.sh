#!/bin/bash

echo "eevee-toolbox init script"

echo "Running hooks"

for hook in $(ls /eevee/hook.d/init/); do
  if [ -x "/eevee/hook.d/init/${hook}" ]; then
    echo "Executing hook: /eevee/hook.d/init/${hook}"
    /bin/bash "/eevee/hook.d/init/${hook}"
  fi
done

echo "Sleeping..."
tail -f /dev/null
