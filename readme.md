## Dockerhub

'https://hub.docker.com/r/lucasfbr/laravel'

- Baixar a imagem no dockerhub
- Executar com o comando: docker run -d --name app -p 8000:8000 lucasfbr/laravel
- Entrar na imagem: docker exec -it -u root app bash
- Executar o servidor do artisan: php artisan serve --host=0.0.0.0
- Abrir o navegador: 'http://localhost:8000/'

Seguindo os passos acima a primeira parte do exercicio estará pronta. No código localizado neste repositório, temos o docker-compose.yaml. 
Ele cria todos os containers e também estabelece comunicação entre eles.
