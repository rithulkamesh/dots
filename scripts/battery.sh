#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9]?[0-9][0-9]?%')

echo "🔋: $BAT"

[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
