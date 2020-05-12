github.com/thytom/dwmbar, the orig project, credit

Log:
1. daypercentage.sh: fix a $date bug: use `$(date +%_H)`, to avoid the shell arithmetic from treating hour `08` as an octol number. // %k == %_H
2. dwm: Use `SauceCodePro Nerd Fond`: the emoji does not display with a appropriate size when I use `SauceCodePro Nerd Fond Mono`
3. st: same as `dwm`, while the terminal do not need to be that way.
4. daysunmoon.sh = day.sh + sunmoon.sh : also use %_H to avoid the octol stuff.
5. battery.sh: when the battery is in the `Charging` or in the `Unknown` status, it is charging.
