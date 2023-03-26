#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 -v parameterVer"
   echo -e "\t Please enter one of the AutoID version via -v: 2021.8.3, 2021.8.2, 2021.8.1, 2021.8.0"
   echo "          download.sh -v 2021.8.3    "
   exit 1 # Exit script after printing help
}

while getopts "v:" opt
do
   case "$opt" in
      v ) parameterVer="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$parameterVer" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

# Begin script in case all parameters are correct
#echo "$parameterVer"
#command="docker run --user=$(id -u) -v ~/autoid-config:/config -it gcr.io/forgerock-autoid/deployer-pro:$parameterVer create-template"
#echo "Download completed"
runFunc()
{
  cat ~/autoid-config/autoid_registry_key.json | docker login -u _json_key --password-stdin https://gcr.io/forgerock-autoid
  docker run --user=$(id -u) -v ~/autoid-config:/config -i gcr.io/forgerock-autoid/deployer-pro:$parameterVer create-template
}
runFunc
