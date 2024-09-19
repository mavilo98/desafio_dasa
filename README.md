Desafio Dasa
Visão Geral
Este repositório contém um pipeline de bioinformática implementado com Snakemake e Flask. Inclui os arquivos necessários para configurar e executar o pipeline dentro de um contêiner Docker.

Pré-requisitos
Certifique-se de ter os seguintes itens instalados em sua máquina:

Docker: Instalar Docker
Começando
Clone o Repositório

``` bash
git clone https://github.com/mavilo98/desafio_dasa.git
cd desafio_dasa
```

Crie uma imagem Docker para a aplicação executando:

``` bash
docker build -t my-python-app .
```

Inicie o contêiner Docker com o seguinte comando:

```
docker run -p 5000:5000 my-python-app
```

Abra seu navegador e acesse:

```
http://localhost:5000
```

Você verá a interface web para interagir com a API.



Algumas observações:
Foi mantido um arquivo de referência contendo os dados adicionais da anotação, pensando em uma futura adição de um parâmetro para se variar o vcf de análise. Porém devido ao tamanho limite de arquivos do github, o mesmo teve que ser cortado, portanto alguns snps podem não possuir anotações.  
github
