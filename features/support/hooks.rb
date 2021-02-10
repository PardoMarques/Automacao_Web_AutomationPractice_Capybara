# Before sem uma tag executa antes de todos os cenários
Before do

    @base = BasePage.new
    @createAcc = CreateAccPage.new
    @checkout = CheckoutPage.new
    @home = HomePage.new
    @signIn = SignInPage.new

end

After do
end
  
# Anexar os prints ao relatório
After do |scenario|

    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'') # Limpar Expressões Regulares
    screenshot = "features/logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)

end