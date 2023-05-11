terraform {
  backend "s3" {
    bucket = "base-terraform-taller"
    key    = "ejercicio-variables/terraform.tfstate"
    region = "us-east-1"
    //opcional
    dynamodb_table = "terraform_state"
  }
}
