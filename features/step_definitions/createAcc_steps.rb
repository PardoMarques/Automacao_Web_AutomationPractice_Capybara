require 'pry'

Dado('possuo os seguintes dados') do |table|
  @dados = table.rows_hash
end

Quando('preencho os campos de texto') do
  @createAcc.fillForm(@dados)
end

Quando('seleciono o genero {string}') do |sexo|
  @createAcc.selectGenre(sexo)
end

Quando('seleciono o checklist {string} e {string}') do |option, option2|
  @createAcc.fillCheckBoxes(option, option2)
end

Quando('para a data de nascimento preencho com {string} de {string} de {string}') do |dia, mes, ano|
  @createAcc.fillDate(dia, mes, ano)
end

Quando('para a estado e país respectivamente, seleciono {string} {string}') do |estado, pais|
  @createAcc.stateAndCountry(estado, pais)
end

Quando('concluo o cadastro do usuario') do
  @createAcc.clickRegister
end
