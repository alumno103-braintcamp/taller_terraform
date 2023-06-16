//Ejemplo de dependencias dentro de Terraform
resource "aws_db_instance" "default" {
  allocated_storage             = 10
  db_name                       = "mydb"
  engine                        = "mysql"
  engine_version                = "5.7"
  instance_class                = "db.t3.micro"
  manage_master_user_password   = true
  master_user_secret_kms_key_id = aws_kms_key.llave.key_id  //DEPENDENCIA IMPLICITA
  username                      = "foo"
  parameter_group_name          = "default.mysql5.7"
  skip_final_snapshot           = true
  backup_retention_period       = 0
  apply_immediately             = true
  //Dependencia explicita
  depends_on = [
    aws_kms_key.llave
  ]
}

//Ejemplo de onvocaciones a recursos fuera de TERRAFORM
resource "aws_db_instance" "basededatos2" {
  allocated_storage             = 15
  db_name                       = "mydb"
  engine                        = "mysql"
  engine_version                = "5.7"
  instance_class                = "db.t3.micro"
  manage_master_user_password   = true
  master_user_secret_kms_key_id = data.aws_kms_alias.llave-amano.target_key_id
  username                      = "foo"
  parameter_group_name          = "default.mysql5.7"
  skip_final_snapshot           = true
  backup_retention_period       = 0
  apply_immediately             = true
}

data "aws_kms_alias" "llave-amano" {
  name = "alias/llave-amano"
}