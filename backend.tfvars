bucket         = "farhan5-s3-tfstate"
key            = "Farhan/terraform.tfstate"
region         = "eu-west-1"
dynamodb_table = "farhan_tstate_db"

# terraform init -backend=true -backend-config=backend.tfvars
