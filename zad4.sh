# ./zad4.sh folder

if [ $# -ne 1 ]
then
    echo program treba dai ma jedan argument
    exit 1
fi


if ! [ -d $1 ]
then
    echo nije folder
    exit 2
fi

folder=$1

for a in $folder/*
do
    aBase=$(basename $a)
    aExt=${aBase#*.}
    if ! [ -d $a ] 
    then
        for b in $folder/*
        do
            if ! [ -d $b ]
            then
            
                bBase=$(basename $b)
                bExt=${bBase#*.}
                if ! [ "$bExt" == "$aExt" ]
                then
                    echo ekstenzije nisu iste
                    exit 3
                fi
            fi
        done
    fi
done

echo ekstenzije su iste
