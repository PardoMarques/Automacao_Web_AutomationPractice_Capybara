class CreateAccPage < BasePage

    # mapeamento

        # Informações pessoais

            element :radio_Mr, '#uniform-id_gender1'
            element :input_cusFirstName, '#customer_firstname'
            element :input_cusLastName, '#customer_lastname'
            element :input_email, '#email'
            element :input_password, '#isPasswd'
            
            element :select_day, '#days'
            element :select_mounth, '#months'
            element :select_year, '#years'

            element :chkbox_newsletter, '#newsletter'
            element :chkbox_specialOffers, '#optin'

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
    
    # end

    # Metodos
        
        def cadastroUsuario(dados)

            binding.pry
            
            radio_Mr.set dados['Genero']
            input_cusFirstName.set dados['Primeiro_Nome']
            input_cusLastName.set dados['Segundo_Nome']
            input_email.set dados['Email']
            input_password.set dados['Senha']
            select_day.set dados['Dia']
            select_mounth.set dados['Mes']
            select_year.set dados['Ano']
            chkbox_newsletter.set dados['CheckB1']
            chkbox_specialOffers.set dados['CheckB2']
            input_firstName.set dados['PrimeiroNome']
            input_lastName.set dados['SegundoNome']
            input_company.set dados['Empresa']
            input_address1.set dados['Endereço1']
            input_address2.set dados['Endereço2']
            input_city.set dados['Cidade']
            select_state.set dados['Estado']
            input_postcode.set dados['CEP 5digitos']
            select_country.set dados['País']
            input_other.set dados['Outros']
            input_phone.set dados['Telefone']
            input_phoneMobile.set dados['Celular']
            input_alias.set dados['Alias']
        end
    
        def go
        visit 'users/new'
        end

    # end
        
end
    

