require 'rspec'

class CheckoutPage < BasePage

  # mapeamento

    element :box_firstCard, 'tbody > .first_item'
    element :text_totalPrice, '#total_price'
    element :btn_processCheckout, "#center_column a[title='Proceed to checkout']"
    element :btn_processAdress, '#center_column button'
    element :btn_processShipping, "#form > p > button"
    element :checkbox_agreeTerms, "#uniform-cgv"
    element :btn_bankwire, "#HOOK_PAYMENT .bankwire"
    element :btn_confirmOrder, '#cart_navigation > button'
    
    # endereço

      element :text_AdressName, '.address.item .address_name'
      element :text_AdressComp, '.address.item .address_company'
      element :text_AdressA1, '.address.item .address_address1'
      element :text_AdressCity, '.address.item .address_city'
      element :text_AdressCountry, '.address.item :nth-child(6)'
      element :text_AdressTel, '.address.item .address_phone'
      element :text_AdressCel, '.address.item .address_phone_mobile'

    # end

  # end

  # metodos

    def expectAddress(data)
      adressName = "#{data['PrimeiroNome']} #{data['SegundoNome']}"
      adressComp = data['Empresa']
      adressA1 = "#{data['Endereço1']} #{data['Endereço2']}"
      #adressCity = "#{data['Cidade']}, #{data['Estado']} #{data['CEP 5digitos']}"
      adressCountry = "United States"
      adressTel = data['Telefone']
      adressCel = data['Celular']

      hashTable = {
        'adressName' => adressName,
        'adressComp' => adressComp,
        'adressA1' => adressA1,
        #'adressCity' => adressCity,
        'adressCountry' => adressCountry,
        'adressTel' => adressTel,
        'adressCel' => adressCel
      }

      return hashTable
    end
  
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

    def returnSumPrice
      text_totalPrice.text
    end

    def clickProcessCheckout
      sleep(2)
      btn_processCheckout.click
      sleep(2)
    end

    def clickProcessAddress
      sleep(2)
      btn_processAdress.click
      sleep(2)
    end

    def clickProcessShipping
      checkbox_agreeTerms.click
      btn_processShipping.click
      sleep(2)
    end

    def clickBankWire
      sleep(2)
      btn_bankwire.click
      sleep(2)
    end

    def clickFinalButton
      sleep(2)
      btn_confirmOrder.click
      sleep(2)
    end    

    def go
      visit '/index.php?controller=order'
    end
  
  # end

end
  