# ./zad6.sh A B C

# svakom prebacenom fajlu treba da bude ekstenzija .txt

let i=1

while [ $i -le $# ]
do
   
    if [ -d ${!i} ]
    then
        mkdir ${!i}_BACKUP
        
        for a in ${!i}/*
        do
            $baza=(basename $a)
            $bezExt=${baza%.*}
            cp $a ${!i}_BACKUP/$bezExt.txt
        done

    else
        echo folder ${!i} ne postoji !
    fi
    let i++

done
