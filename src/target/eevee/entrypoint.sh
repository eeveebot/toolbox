#!/bin/bash

echo "eevee-toolbox init script"

echo "Running hooks"

for hook in /eevee/hook.d/init/*; do
  if [ -x "$hook" ]; then
    echo "Executing hook: $hook"
    "$hook"
  fi
done

echo "Sleeping..."
tail -f /dev/null
