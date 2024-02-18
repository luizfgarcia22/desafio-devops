#Setando o provider requerido e a versão
terraform {
  required_providers{
      docker = {
          source = "kreuzwerker/docker"
          version = "3.0.2"
      }
  }
}

#Configurando o Provedor
provider "docker" {  
}

#Criando a Imagem
resource "docker_image" "python" {
    name = "python:latest"
    keep_locally = true
}

#Criando o Container Docker
resource "docker_container" "python" {
    name = "python"
    image = docker_image.python.image_id

ports {
  external = 8080
  internal = 80
}
} 
