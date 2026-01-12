#!/usr/bin/env bash

enter_game() {
    # Hide cursor
    printf '\033[?25l'
    # Disable input buffering
    stty -echo -icanon time 0 min 0
    # Clear and go home
    printf '\033[2J\033[H'
}

exit_game() {
    stty sane
    printf '\033[?25h\033[?1049l'
    clear
    tput setaf 256
    exit 0
}

trap exit_game INT TERM EXIT

enter_game

tree=(
    '                        *                         '
    '                       >o<                        '
    '                      >>o<<                       '
    '                     >>*<O<<                      '
    '                    >@>o>@<<<                     '
    '                   >*<<<*<<<o<                    '
    '                  >>o<<<O<<O>@<                   '
    '                 >>*>>@>>o<@<<<<                  '
    '                >>@<o<<<O<*<<<O<<                 '
    '               >*<<@<<<@<<<@>>>o<<                '
    '              >>*>>O<<*<<<*<<*<<*<<               '
    '             >O<<<@>>>@<<O<<o<<o<<<<              '
    '            >>O>*>o<<<*>>>*>>*>>>o<<<             '
    '           >>@>>O>>*<O>>*<*<@>*>>O<<<<            '
    '          >>@<<<@<<<O<O<@>>@<o<<*<<<*<<           '
    '         >>O>>>*>>>@>>@<@<<<o<<<*>>O<<<<          '
    '        >>*<<<*<<O>>O>>O>o<O<<<O>>@>>>O<<         '
    '       >*<*>>@>>@>o<<o<<o<<O>>>o<O>>>@<<<<        '
    '      >>o>>>O<<*<@>O<@<<<@>>o<@>>O<<<O>>>o<       '
    '     >>O<<o>>>O>>>@>>o<*<<*>@<O>>O<o>>@<<<O<      '
    '    >o<<<o<<*>>>@<<*<<O>>>o<<@<@>O>>*>>o>@<o<     '
    '   >*>>>*>>o>>o>>>*<<<@<<<*<<@>O<<*>o<<O>>@<@<    '
    '  >o>o>>>*<<*<<@>>>o<<@>>>*>*>o<<<@>>@>O<@>>>O<   '
    ' >*<<@>>*<@>>o>>o<@>>*>*<O>>O>>@<@<<*<<<*<<<*<<<  '
    '>@<<<O<O<<<o>>>@<<<*<<*>>O<o>>O>>>@>>O>*<O>*>>@<< '
    '                      |   |                       '
    '                      |   |                       '
    '           _  _ __ ___|___|___ __ _  _            '
)

tree_lines="${#tree[@]}"
branches_lines=$(($tree_lines - 3))
height=7
mid=$((height / 2))
pointer=$branches_lines

while true; do
    frame="\033[H"
    for ((i = 0; i < tree_lines; i++)); do
        dist=$((i - pointer))

        if ((dist >= 0 && dist < height && i < branches_lines)); then
            offset=$((dist - mid))
            if ((offset < 0)); then offset=$((-offset)); fi

            factor=$((100 - (offset * 100 / (mid + 1))))

            r=$((255 - (255 * factor / 100)))
            g=255
            b=$((255 - (255 * factor / 100)))

            frame+="\033[38;2;${r};${g};${b}m${tree[i]}\n"
        else
            frame+="\033[0;37m${tree[i]}\n"
        fi
    done
    printf "$frame"

    ((pointer -= 1))
    if ((pointer < -height)); then
        ((pointer = $branches_lines))
    fi

    sleep 0.2
done
