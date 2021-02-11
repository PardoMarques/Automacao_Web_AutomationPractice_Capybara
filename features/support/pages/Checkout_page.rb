class CheckoutPage < BasePage

  # mapeamento

    element :box_firstCard, 'tbody > .first_item'
    element :text_totalPrice, '#total_price'

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
        binding.pry
        adressName = "#{data['PrimeiroNome']} #{data['SegundoNome']}"
        adressComp = data['Empresa']
        adressA1 = "#{data['Endereço1']} #{data['Endereço1']}"
        adressCity = "#{data['Cidade']}, #{data['Estado']} #{data['CEP 5digitos']}"
        adressCountry = "United States"
        adressTel = data['Telefone']
        adressCel = data['Celular']

        expect(text_AdressName.text).to have_content adressName
        expect(text_AdressComp.text).to have_content adressComp
        expect(text_AdressA1.text).to have_content adressA1
        expect(text_AdressCity.text).to have_content adressCity
        expect(text_AdressCountry.text).to have_content adressCountry
        expect(text_AdressTel.text).to have_content adressTel
        expect(text_AdressCel.text).to have_content adressCel
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

    def go
      visit '/index.php?controller=order'
    end
  
  # end

end
  