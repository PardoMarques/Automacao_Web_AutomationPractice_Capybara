class CheckoutPage < BasePage

  element :box_firstCard, 'tbody > .first_item'
  element :text_totalPrice, '#total_price'
  
  def returnFirstItem(option)
    case option
      when "nome"
        box_firstCard.find('.product-name').text

      when "cor"
        box_firstCard.find('small > a').text

      when "disponibilidade"
        box_firstCard.find('.label').text

      when "preço total"
        box_firstCard.find('.cart_total .price').text
    end
  end

  def go
    visit '/index.php?controller=order'
  end
  
end
  