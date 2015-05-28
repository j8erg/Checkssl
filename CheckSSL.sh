#Author Ergy Jean-Baptiste
#with help from: http://giantdorks.org/alain/shell-script-to-check-ssl-certificate-info-like-expiration-date-and-subject/


#!/bin/bash

for URL in $(cat URLS.txt); do
        echo $URL
        openssl s_client -connect "$URL":443 2>/dev/null | openssl x509 -noout -subject -hash
        echo "-------"
done
