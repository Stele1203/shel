# ./zad7.sh proizvoljan broj


let n=$#-1
if [ $# -lt 2 ]
then
    echo program mora da ima barem dva argumenta
    exit 1
fi

folder=${!#}
let i=1
let izbrisanih=0
while [ $i -lt $# ] 
do
    echo ${!i}
    if [ -e $folder/${!i} ]
    then
        rm $folder/${!i}
        echo fajl uspjesno izbrisan
        let izbrisanih++
    fi
    let i++
done

echo $izbrisanih
