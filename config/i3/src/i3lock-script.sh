#!/bin/sh

# i3lock-color script

nord0='#2E3440ff'
nord1='#3B4252ff'
nord2='#434C5Eff'
nord3='#4C566Aff'
nord4='#D8DEE9ff'
nord5='#E5E9F0ff'
nord6='#ECEFF4ff'
nord7='#8FBCBBff'
nord8='#88C0D0ff'
nord9='#81A1C1ff'
nord10='#5E81ACff'
nord11='#BF616Aff'
nord12='#D08770ff'
nord13='#EBCB8Bff'
nord14='#A3BE8Cff'
nord15='#B48EADff'

foreground=$nord6
background=$nord0

Blank='#00000000'  # blank
White='#ffffffff'  # white opaque

DATE=$(LC_ALL=en_US-UTF-8 date +"%A, %B %Y")
# It must be a PNG image in rgb colorspace and with correct size
# use "convert" to elaborate your img if needed
# eg.
#   >convert image1 -resize 1600x900! -colorspace RGB image2.png
IMG="/home/tr/.config/i3/src/0067.png"


i3lock \
--image=$IMG                \
--tiling                    \
\
--screen 1                  \
--keylayout 2               \
--layoutcolor=$nord6        \
\
--radius 20                 \
--ring-width 4.0            \
--ringvercolor=$nord13      \
--ringwrongcolor=$nord11    \
--ringcolor=$nord6          \
--insidevercolor=$nord13    \
--insidewrongcolor=$nord11  \
--insidecolor=$Blank        \
--linecolor=$Blank          \
--keyhlcolor=$nord14        \
--bshlcolor=$nord14         \
--separatorcolor=$nord1     \
\
--indicator                 \
--indpos="w/2-r/2:h-r*2"    \
\
--clock                     \
--force-clock               \
--timestr="%H:%M:%S"        \
--timepos="w/2:h/2"         \
--timesize=96               \
--timecolor=$nord6          \
--time-font="JetBrains Mono Regular Nerd Font Complete Mono" \
\
--datestr="$DATE"           \
--datepos="tx:ty+80"        \
--datesize=32               \
--datecolor=$nord6          \
--date-font="JetBrains Mono Regular Nerd Font Complete Mono" \
\
--veriftext=""              \
--verifcolor=$Blank         \
--verif-font="JetBrains Mono Regular Nerd Font Complete Mono" \
--wrongtext=""              \
--wrongcolor=$Blank         \
--wrong-font="JetBrains Mono Regular Nerd Font Complete Mono" 

# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# captures the screen and blurs it using the given sigma
#--blur 5            

