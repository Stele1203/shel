# ./vj1.sh dir prefiks outfile

if [ $# -ne 2 ] && [ $# -ne 3 ]
then
    echo Nepravilan unos argumenata
    exit 1
fi

if ! [ -d $1 ]
then
    echo Taj folder ne postoji
    exit 2
fi

if [ $# -eq 3 ] && ! [ -e $3.txt ]
then
    echo Outfile ne postoji
fi

if [ $# -eq 3 ]
then
    pomocni=$3
else
    touch sve.txt
    echo "Stefan Karisik" >> sve.txt
    pomocni=sve
fi

radni=$1
prefiks=$2

for a in $radni/"$prefiks"*.txt 
do
  cat $a >> $pomocni.txt  
done
