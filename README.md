# sapient_coding_test
This repo is created for Sapient Cloud and DevOps Assignment.

Prerequisite

Install [Terraform]
Install [Azure Cli]
Create Service Principal with contributer access on your subscription scope
Usage:

Open powershell and execute below command for service principal:

az ad sp create-for-rbac --name "XXXXXXX" --role "Contributor" --scopes="/subscriptions/8391c2ef-71f0-4f2d-a184-87fada4f8afd"

Set below environment variables:

$env:ARM_CLIENT_ID="XXXXX"
$env:ARM_CLIENT_SECRET="XXXXX"
$env:ARM_TENANT_ID="3eed6cf0-578f-4fdc-8c56-b41a9db82a11"
$env:ARM_SUBSCRIPTION_ID="8391c2ef-71f0-4f2d-a184-87fada4f8afd"

./terraform.exe init
./terraform.exe plan
./terraform.exe apply --auto-approve
./terraform.exe destroy --auto-approve

The Terraform resources will consists of following structure:
main.tf - Entrypoint for terraform resources.
variables.tf - It contain the declarations for variables.
terraform.tfvars - The file to pass the terraform variables values.
provider.tf - terraform provider
virtualmachinescaleset.tf: code for creating sapient case study

Attaching the below files for reference:
terraform.tfstate: terraform state file after apply
terraform_apply_and_destroy_logs.txt: logs of terraform apply and destroy
