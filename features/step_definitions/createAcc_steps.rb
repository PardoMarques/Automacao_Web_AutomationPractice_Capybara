require 'pry'

Dado('possuo os seguintes dados') do |table|
  @dados_nome = table.rows_hash
end