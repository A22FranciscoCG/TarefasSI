#!/bin/bash

clear
rematar=-1
num1=12
num2=20

function comparacion () {
    if [ $num3 == $num4 ]
                then
                    echo "$num3 e $num4 son iguais"
                elif [ $num3 \> $num4 ]
                then
                    echo "$num3 é maior que $num4"
                elif [ $num3 \< $num4 ]
                then
                    echo "$num3 é menor que $num4"
                fi
}


while [ $rematar -eq -1 ] 
do
    echo ""
    echo "1: Compara dous números"
    echo "2: Mostra os arquivos no directorio actual"
    echo "3: Comproba se un ficheiro existe"
    echo "4: Mostra os arquivos e directorios do directorio HOME"
    echo "5: Compara dous números introducidos polo usuario"
    echo ""
    
    read -p "Selecciona unha opción 1-5: " opcion
       case "$opcion" in
        1)
            echo "Os números son os seguintes: $num1, $num2" 
            if [ $num1 -gt $num2 ]
            then
                echo "O segundo número é maior que o primeiro"
            else
                echo "O primeiro número é maior que o segundo"
            fi
        ;;
        2)
            echo "Mostra os arquivos do directorio actual: " `ls`
        ;;
        3)
            read -p "Introduce o nome dun ficheiro: " f
                
                if [ -e $f ]
                    then
                        echo "O ficheiro existe"
                    else
                        echo "Ese ficheiro non existe"
                    fi
        ;;
        4)
             for file in $HOME/*
                    do
                        if [ -d $file ]
                        then  
                            echo "$file é un directorio"
                        else
                            echo "$file é un arquivo"
                        fi
                    done
        ;;
        5)
            read -p "Introduce un numero: " num3 
            read -p "Introduce outro numero: " num4 
                
                comparacion
                
        ;;             
       esac
       
       if [ $opcion -gt 5 ] || [ $opcion -lt 0 ]
             then
                echo "O número introducido é inválido"
        fi 
        
        if [ $opcion -eq 0 ]
            then    
                rematar=0 && clear        
        fi
done