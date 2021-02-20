# *www.automationpractice.com*

Este projeto trata-se de uma automatização de testes de um e-commerce criado para fins de estudos.


As gems utilizadas neste projeto são as
	
	🚀Selenium WebDriver 3.142.7
	
	✨Capybara 3.34.0
	
	✨Cucumber 5.2.0
	
	✨Rspec 3.10.0
	
	✨Pry 0.13.1
	
	✨Site-Prism 3.7

Para executar o projeto localmente, é preciso realizar a instalação do Ruby 3.0 e preparar a ambientação adequadamente, isto é:    

```
# Clonar este repositório
# Acessar a pasta via terminal/cmd
# Realizar as instalações das gems e do cucumber corretamente
# Baixar a versão adequada do chromedriver para que seja compativel ao Google Chrome instalado em sua máquina

cmd:
$ gem install bundler
$ bundle install


# Para executar o projeto
$ cucumber

# Para executar o projeto em alguma feature especifica a partir da tag
exemplo:
$ cucumber -t @home_preco


```

### ✅Curiosidades

**O que é o Capybara?**
Ele é uma DSL do Selenium. DSL(Domain-Specific Language ou “Linguagem de Domínio Específico”) pode ser entendido como uma transcrição personalizada para um código. Ou seja, o Capybara é um derivado do Selenium.

Abaixo deixo um exemplo(tirado do projeto) que mostra a diferença quanto a legibilidade do código.


Selenium:
```
def  addToCartByName(optionName)
	aux  =  box_productList.find_element(:xpath, "//a[contains(text(), '#{optionName}')]")
	ancestorAux  =  aux.find_element(:xpath, "../../..")
	btn_add  =  ancestorAux.find_element(:xpath, "//*[contains(text(), 'Add to cart')]")
	driver.action.move_to(aux).perform
	btn_add.click
end
```


Capybara:
```
def  addToCartByName(optionName)
	cardScope  =  scopeSelect("h5 > a.product-name", optionName, "#homefeatured .ajax_block_product")
	cardScope.hover
	cardScope.click_on("Add to cart")
end
```
