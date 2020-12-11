if [[ $# -eq 0 ]] ; then
    echo 'you must pass in an environment of dev,staging or production'
    exit 0
fi

vault_name="my-key-vault-$1"

az keyvault create --name $vault_name --resource-group "mystate" --location germanywestcentral