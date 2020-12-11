#!/bin/bash
RESOURCE_GROUP_NAME=tstate
# $1 is the environment or terraform workspace, dev in this example
STORAGE_ACCOUNT_NAME="tstate$RANDOM$1"
CONTAINER_NAME="tstate$1"

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query [0].value -o tsv)

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

echo "storage_account_name: $STORAGE_ACCOUNT_NAME"
echo "container_name: $CONTAINER_NAME"
echo "access_key: $ACCOUNT_KEY"

az keyvault secret set --vault-name "my-key-vault-dev" --name "terraform-backend-key" --value $ACCOUNT_KEY
az keyvault secret set --vault-name "my-key-vault-dev" --name "state-storage-account-name" --value $STORAGE_ACCOUNT_NAME
az keyvault secret set --vault-name "my-key-vault-dev" --name "state-storage-container-name" --value $CONTAINER_NAME

# Store the Azure subscription ID in the key vault store for easier access
az keyvault secret set --vault-name "my-key-vault-dev" --name "my-subscription-id" --value "79c15383-4cfc-49my-a234-d1394814ce95"