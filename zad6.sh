# ./zad6.sh A B C

let i=1

while [ $i -le $# ]
do
   
    if [ -d ${!i} ]
    then
        mkdir ${!i}_BACKUP
        
        for a in ${!i}/*
        do
            cp $a ${!i}_BACKUP
        done

    else
        echo folder ${!i} ne postoji !
    fi
    let i++

done
