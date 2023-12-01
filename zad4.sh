# ./zad4.sh imefolder

if [ $# -ne 1 ]
then
    echo program treba da ima samo jedan argument
    exit 1
fi

if ! [ -d $1 ]
then
    echo argument koji ste zadali nije folder
    exit 2
fi

folder=$1

for a in $folder/* 
do

    aBase=$(basename $a)
    aExt=${aBase#*.}
    

    for b in $folder/*
    do
        bBase=$(basename $b)
        bExt=${bBase#*.}
        if ! [ "$bExt" == "$aExt" ]
        then
           echo Ekstenzije se razlikuju
            exit 3
        fi

    done
    
done
echo Ekstenzije su iste
