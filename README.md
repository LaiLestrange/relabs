# Rebase Labs

Projeto desenvolvido durante o Rebase Labs.

> Source: https://git.campuscode.com.br/-/snippets/18


## Tech Stack

* Docker
* Ruby
* Javascript
* HTML
* CSS


## Premissa

A premissa principal deste laboratório é que a app **não seja feita em Rails**, devendo seguir o padrão **Sinatra** que há neste projeto, ou então se preferir, podendo utilizar outro web framework que **não** seja Rails, por ex. grape, padrino, rack, etc ou até mesmo um HTTP/TCP server "na mão".

---
## Features propostas:


- [ ] **1:** Importar os dados do CSV para um database SQL
  - [ ] Script para importar os dados
  - [ ] Modificar a implementação do endpoint atual
- [ ] **2:** Exibir listagem de exames no navegador Web
- [ ] **3:** Exibir detalhes de um exame em formato HTML a partir do token do resultado
  - [ ] Criar endpoint para mostrar os detalhes de um exame médico
- [ ] **4:** Importar resultados de exames em formato CSV de forma assíncrona
  - [ ] Implementar endpoint para receber um CSV no HTTP request
  - [ ] Executar o import do endpoint de forma assíncrona em background
  - [ ] Botão de "Importar CSV" na página Web em formato HTML


## Developing...

### Como Executar

Clone o repositório na sua máquina:

```bash
git clone https://github.com/LaiLestrange/relabs.git
```

Entre na pasta em questão:

```bash
cd relabs
```

Execute o comando:

```bash
docker compose up --build
```

Agora você pode acessar a aplicação utilizando o endereço:

> Backend: `localhost:4000`

### Endpoints
### Containers

