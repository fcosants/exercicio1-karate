Feature: Gestão de pets
    Como um gestor de petstore
    Desejo gerenciar os pets
    Para ter o controle de informações cadastradas

    Scenario: Cadastrar pets por id
        Given url "https://petstore.swagger.io/v2"
        And path "pet", "131313"
        And form field name = "Luffy"
        And form field status = "available" 
        When method post
        Then status 200

    Scenario: Consultar pet com status available e pending
        Given url "https://petstore.swagger.io/v2"
        And path "pet/findByStatus"
        And param status = ["available", "pending"]
        When method get
        Then status 200