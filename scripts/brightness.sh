
#!/bin/bash

INPUT=$1

up() {
    brightnessctl -d intel_backlight set 10%+
}

down() {
    brightnessctl -d intel_backlight set 10%-
}

case $INPUT in
    "up") up
    ;;
    "down") down
    ;;
    *) echo "unknown input"
esac
