class CreateAccPage < BasePage

    # mapeamento

        # Informações pessoais

            element :radio_Mr, '#uniform-id_gender1'
            element :radio_Mrs, '#uniform-id_gender2'

            element :input_cusFirstName, '#customer_firstname'
            element :input_cusLastName, '#customer_lastname'
            element :input_email, '#email'
            element :input_password, '#passwd'
            
            element :select_day, '#uniform-days'
            element :select_mounth, '#uniform-months'
            element :select_year, '#uniform-years'

            element :chkbox_newsletter, '#uniform-newsletter'
            element :chkbox_specialOffers, '#uniform-optin'

        # end

        # Endereço
            
            element :input_firstName, '#firstname'
            element :input_lastName, '#lastname'
            element :input_company, '#company'
            element :input_address1, '#address1'
            element :input_address2, '#address2'
            element :input_city, '#city'
            element :select_state, '#id_state'
            element :input_postcode, '#postcode'
            element :select_country, '#id_country'
            element :input_other, '#other'
            element :input_phone, '#phone'
            element :input_phoneMobile, '#phone_mobile'
            element :input_alias, '#alias'

        # end

        element :btn_register, '#submitAccount'
    
    # end

    # Metodos
        
        def fillForm(data)
            input_cusFirstName.set data['Primeiro_Nome']
            input_cusLastName.set data['Segundo_Nome']
            input_email.set ("fakemail"+Time.now.strftime("%s").to_s+"@test.com")
            input_password.set data['Senha']  
            input_firstName.set data['PrimeiroNome']
            input_lastName.set data['SegundoNome']
            input_company.set data['Empresa']
            input_address1.set data['Endereço1']
            input_address2.set data['Endereço2']
            input_city.set data['Cidade'] 
            input_postcode.set data['CEP 5digitos']
            input_other.set data['Outros']
            input_phone.set data['Telefone']
            input_phoneMobile.set data['Celular']
            input_alias.set data['Alias']
        end

        def selectGenre(option)
            if option == "homem"
                radio_Mr.click
            elsif option == "mulher"
                radio_Mrs.click
            end
        end

        def fillDate(day, mounth, year)
            find("#uniform-days option[value='#{day}']").click
            find("#uniform-months option[value='#{mounth}']").click
            find("#uniform-years option[value='#{year}']").click
        end

        def fillCheckBoxes(checkA, checkB)
            if checkA == "sim"
                chkbox_newsletter.click
            end
            if checkB == "sim"
                chkbox_specialOffers.click
            end
        end

        def stateAndCountry(state, country)
            find("#uniform-id_state option[value='#{state}']").click
            find("#uniform-id_country option[value='#{country}']").click
        end

        def clickRegister
            btn_register.click
        end

    # end
        
end
    

