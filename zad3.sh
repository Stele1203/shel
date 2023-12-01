# ./zad3.sh flag tekst

if [ $# -ne 2 ]
then
    echo Nedovoljno argumenata
    exit 1
fi

if ! [ "$1" == "-e" ] && ! [ "$1" == "-s" ]
then
    echo Trebas unijeti -e ili -s
    exit 2
fi

tekst=$2

if [ "$1" == "-e" ]
then

    for a in *
    do 
        bez_ext=${a%.*}
        if ! [ "$a" == "zad3.sh" ]
        then
           mv "$a" "$bez_ext.$tekst"
        fi        
        

        echo $bez_ext
    done
fi


if [ "$1" == "-s" ]
then


    for a in *
    do
        ekstenzija=${a#*.}
        imefajla=${a%.*}
        if ! [ "$a" == "zad3.sh" ]
        then
           mv "$a" "$imefajla$tekst.$ekstenzija"
        fi    
        
    done

fi
