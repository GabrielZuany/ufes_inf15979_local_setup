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
    # Para subir todos os containers
    docker-compose up -d
    
    # Para subir apenas o PostgreSQL
    docker-compose up -d postgres
    
    # Para subir apenas o MySQL
    docker-compose up -d mysql
    ```

3. Verifique se os serviços estão rodando:
    ```bash
    docker ps
    ```

## Acessando os bancos de dados

1. Baixe e instale o [DBeaver](https://dbeaver.io/download/).
2. Abra o DBeaver e crie uma nova conexão com os seguintes dados (ajuste conforme necessário):

### PostgreSQL
- **Host:** localhost
- **Porta:** 5432
- **Usuário:** aluno
- **Senha:** elmasri

### MySQL
- **Host:** localhost
- **Porta:** 3306
- **Usuário:** root
- **Senha:** elmasri

## Parando o ambiente

```bash
docker-compose down
```

## Observações

- Certifique-se de que as portas 5432 (PostgreSQL) e 3306 (MySQL) não estejam em uso.
- Consulte o arquivo `.env` para variáveis de ambiente customizadas.
- Os scripts DDL são carregados automaticamente na inicialização dos containers.

## License

This project is licensed under the **Educational Use License (EUL)**. Strictly for educational and non-commercial use only. See the [LICENSE](./LICENSE) file for details.
