# ./zad3.sh flag tekst

if ! [ $# -eq 2 ]
then
    echo broj argumenata nije 2
    exit 1
fi

flag=$1
tekst=$2

if [ "$flag" == "-e" ]
then
   for a in *
    do
        if ! [ "$a" == "zad3.sh" ]
        then
            if ! [ -d $a ]
            then
                bez_ext=${a%.*}
                mv "$a" "$bez_ext.$tekst"
            fi
        fi
    done
fi


if [ "$flag" == "-s" ]
then
    for a in *
    do
        if ! [ "$a" == "zad3.sh" ]
        then
            if ! [ -d $a ]
            then
               bez_ext=${a%.*}
               ext=${a#*.}
               mv "$a" "$bez_ext$tekst.$ext"
            fi
        fi
    done
fi
