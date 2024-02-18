CENÁRIO DE AUTOMAÇÂO

Foram criadas duas maneiras de solução para o problema abordado

1 - Criação de uma imagem docker com o python já instalado nela ( Arquivo Dockerfile criado com as especificações de versão)

2 - Criação da imagem utilizando o Terraform onde são baixadas as dependências e a infra necessária para a execução. ( Arquivo main.tf)

3 - Pipeline do Github Actions para realizar a criação e registro da imagem no dockerhub 