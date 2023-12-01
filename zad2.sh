# ./vj2.sh dir1 dir2

read -r -p "Unesite ekstenziju datoteka: " n
echo $n

if [ $# -ne 2 ] && [ $# -ne 1 ]
then
    echo Argumenti nisu pravilno uneseni
    exit 1
fi

if ! [ -d $1 ]
then
    echo folder 1 ne postoji
    exit 2
fi

if [ $# -eq 2 ] && ! [ -d $2 ]
then
    echo folder 2 ne postoji
    exit 2
fi

if [ $# -eq 2 ]
then
    pomocni=$2
else
    mkdir DRUGI_TEST
    pomocni=DRUGI_TEST
fi

glavni=$1

for a in $glavni/*."$n"
do
    baza=$(basename $a)
    bezExt=${baza%.*}

    cat $a >> $pomocni/$bezExt.bak
done


