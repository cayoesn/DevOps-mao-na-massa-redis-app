#/bin/bash

RESULT="`wget -q0 - http://localhost:8090`"
wget -q localhost:8090

if [$? -eq 0]
then
    echo "OK - Serviço ativo"
elif [[$RESULT == *Number* ]]
    echo "OK - Serviço ativo"
    echo $RESULT
else 
    echo "ERROR - Serviço inativo"
    exit 1
fi