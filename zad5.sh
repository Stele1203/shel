# ./zad5.sh A B

let broj_fajlova=$(find "$1" | wc -l)


if ! [ $broj_fajlova -gt 5 ]
then
    echo nema vise od 5 fajlova
    exit 1
fi

let i=1
for a in $1/*
do
    
    if [ $i -le 3 ]
    then

        baza=$(basename $a)
      
        cat $a >> $2/$baza
    else
        exit 2
    fi
    let i++

done
