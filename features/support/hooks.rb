Before do

    @base = BasePage.new
    @createAcc = CreateAccPage.new
    @checkout = CheckoutPage.new
    @home = HomePage.new
    @signIn = SignInPage.new

end

After do
end
  
# Printar falhas de execução
After do |scenario|

    if scenario.failed?

        nome_cenario = scenario.name.tr(' ', '_').downcase!
        nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'') # Limpar Expressões Regulares
        screenshot = "features/logs/shots/#{nome_cenario}.png"
        page.save_screenshot(screenshot)

    end

end