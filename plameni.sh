# Program koji za ulaz ima 
# nekoliko cijelih brojeva 
# i upisuje ih u fajl u sortiranom 
# poretku 
# ./z3.sh 4 1 9 10 5

# Ucitavanje sa tastature 
# read n

# Provjera jednakosti stringa 
# if [ "$1" = "-p" ]

#if [ $# -gt 0 ]
#then
#    let min_br=$1 
#    let min_ind=1
#    let i=2
#
#    while [ $i -le $# ]
#    do
#        let curr=${!i}
#        if [ $curr -lt $min_br ]
#        then 
#            let min_br=curr
#            let min_ind=i        
#        fi
#        let i++
#    done
#
#    echo $min_br >> brojevi.txt 
#    let left=min_ind-1
#    let right=min_ind+1
#    ./z3.sh "${@:1:left}" "${@:right:$#}"
#fi

while [ $# -gt 0 ]
do
    let min_br=$1 
    let min_ind=1
    let i=2

    while [ $i -le $# ]
    do
        let curr=${!i}
        if [ $curr -lt $min_br ]
        then 
            let min_br=curr
            let min_ind=i        
        fi
        let i++
    done

    echo $min_br >> brojevi.txt 
    let left=min_ind-1
    let right=min_ind+1
    set -- "${@:1:left}" "${@:right:$#}"
done
