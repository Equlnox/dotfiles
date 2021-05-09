xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
#/usr/bin/prime-offload &  [[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources & ~/.fehbg & udiskie & imwheel & exec i3 & sudo /usr/bin/prime-switch
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources & ~/.fehbg & udiskie & imwheel & exec i3 
