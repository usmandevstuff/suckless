
#!/bin/bash

BRIGHTNESS=$(brightnessctl -m | cut -d, -f4 | tr -d %)

if [[ $BRIGHTNESS -ge 70 ]]; then
        echo "$BRIGHTNESS% 󰃚 " 
elif [[ $BRIGHTNESS -ge 30 ]]; then
        echo "$BRIGHTNESS% 󰃛 "
elif [[ $BRIGHTNESS -gt 0 ]]; then
        echo "$BRIGHTNESS% 󰃜 "
fi
