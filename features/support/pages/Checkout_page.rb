class CheckoutPage < BasePage

  element :abc, '#aaaa'
  element :def, '#bbbb'
  
  def method (parametro)
    #corpo_do_metodo
  end

  def go
    visit 'users/new'
  end
  
end
  