azure group create pjmysuperapp1_rg westus
azure group deployment create -f azuredeploy.json -e azuredeploy-params.json -g pjmysuperapp1_rg

printf 'Opening site'
    until $(curl --output /dev/null --silent --head --fail http://pjmysuperapp1.azurewebsites.net); do
      printf '.'
      sleep 1
    done
open "http://pjmysuperapp1.azurewebsites.net"
