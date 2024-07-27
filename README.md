## Desafio Estágio Petros

Este projeto foi desenvolvido para atender ao desafio proposto, que consistia em criar um sistema que gerasse uma tabela com as corretoras ativas. Para isso, foi elaborado um script simples que acessa a [Brasil API](https://brasilapi.com.br), seguindo a documentação para linguagem Ruby, e extrai os dados necessários.

O script faz uma requisição à API, processa os dados recebidos e gera um arquivo CSV contendo apenas as corretoras ativas, excluindo aquelas com status "CANCELADA".

Portanto, para rodar o código com êxito deve:

<details>
  <summary><strong>Ruby</strong></summary>

  * Verificar se Ruby está instalado

    ```bash
    ruby -v
    ```

  * Caso não esteja, basta instalar no [site oficial](https://www.ruby-lang.org/en/downloads/).

</details>

</br>

<details>
  <summary><strong>Brasil API</strong></summary>

  * Siga a documentação de instalação do [BrasilAPI para Ruby](https://github.com/dayvidemerson/brasilapi-rb)

    ```bash
    bundle add brasilapi
    ```
    ```bash
    gem install brasilapi
    ```

  * Rode o programa no terminal
    ```bash
    ruby corretoras-ativas.rb
    ```

</details>
