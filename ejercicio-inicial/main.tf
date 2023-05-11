//Brain Tech
//Ejercicio inicial
//el nombre del archivo es referencial


//Captura las credenciales del archivo config credentials, generado por el aws configure
provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "ejemplo-terraform2" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  tags = {
    Name = "mi-servidor-tf"
  }
}