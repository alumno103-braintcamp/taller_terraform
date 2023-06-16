terraform {
  backend "s3" {
    bucket = "base-terraform-taller-ml"
    key    = "ejercicio-estructura/terraform.tfstate"
    region = "us-east-1"
    //opcional
    dynamodb_table = "terraform_state"
  }
}
