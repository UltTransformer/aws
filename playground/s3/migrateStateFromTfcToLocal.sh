# Ensure cloud block is in config
terraform login
terraform init
terraform plan # Should run in TFC

mkdir -p terraform.tfstate.d/tfc-migration
terraform state pull > terraform.tfstate.d/tfc-migration/terraform.tfstate
mv .terraform/terraform.tfstate .terraform/terraform.tfstate.old
mv terraform.tfstate.d/tfc-migration/terraform.tfstate .terraform/terraform.tfstate
# Remove the cloud block in the config
terraform init
terraform plan # Should run locally with no change

terraform login backend.api.env0.com
# Add env0 cloud block
terraform init -migrate-state -force-copy
# Update env0 template configuration (TF version and VCS)




mv .terraform/terraform.tfstate terraform.tfstate.d/tfc-migration/terraform.tfstate 