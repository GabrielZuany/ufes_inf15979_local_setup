# UFES INF15979 - Local Setup

Este guia descreve como subir o ambiente local para a disciplina INF15979.

## Pré-requisitos

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [DBeaver](https://dbeaver.io/download/)

## Subindo o ambiente

1. Clone o repositório:
    ```bash
    git clone https://github.com/GabrielZuany/ufes_inf15979_local_setup.git
    cd ufes_inf15979_local_setup
    ```

2. Suba os containers:
    ```bash
    docker-compose up -d
    ```

3. Verifique se os serviços estão rodando:
    ```bash
    docker ps
    ```

## Acessando o banco de dados

1. Baixe e instale o [DBeaver](https://dbeaver.io/download/).
2. Abra o DBeaver e crie uma nova conexão com os seguintes dados (ajuste conforme necessário):

    - **Host:** localhost
    - **Porta:** 5432 (ou a porta configurada)
    - **Usuário:** aluno
    - **Senha:** elmasri

## Parando o ambiente

```bash
docker-compose down
```

## Observações

- Certifique-se de que as portas necessárias não estejam em uso.
- Consulte o arquivo `.env` para variáveis de ambiente customizadas.
