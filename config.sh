#!/bin/bash

URL="https://my.axelname.ru/rest"
NS1="ns1.domainparking.ru"
NS2="ns2.domainparking.ru"

function domain {
    if [[ ! "$1" == *.ru ]]
    then
        echo "$1.ru"
    else
        echo $1
    fi

}

FILE="account.sh"

if [ ! -f $FILE ]; then
    echo "File ${FILE} not found!"
    echo "Open link: https://my.axelname.ru/client/profile/"
    read -p "Nic handle: " NIC
    echo "Open link: https://my.axelname.ru/client/profile/rest/"
    read -p "API token: " API_KEY
    echo "Create file: ${FILE}"
    echo "#!/bin/bash" > $FILE
    echo "NIC='${NIC}'" >> $FILE
    echo "API_KEY='${API_KEY}'" >> $FILE
    chmod a+x $FILE
    echo "File: ${FILE} crated..."
    exit
fi


