# Funcionalidades que podem ser utilizadas no sistema inteiro
class BasePage < SitePrism::Page

    # mapeamento

        element :img_headerBanner, '#header > div.banner > div > div > a > img'
        element :link_contact, '#contact-link > a'
        element :link_signIn, 'div.header_user_info > a.login'
        element :input_search, '#search_query_top'
        element :btn_search, '#searchbox > button'
        element :dropd_cart, '.shopping_cart > a'
        element :dropd_cartBtn, '#button_order_cart'
        element :icon_delete, 'dt.first_item > span > a.ajax_cart_block_remove_link'
        element :box_topMenu, '#block_top_menu'

    # end

    # metodos
    
        def click_contactUs
            link_contact.click
        end

        def click_signIn
            link_signIn.click
        end

        def searchItem(textToFind)
            input_search.set textToFind
            btn_search.click
        end

        def cartOptions(option)
            case option
                when "Check out"
                    dropd_cart.click

                when "Hover" 
                    dropd_cart.hover

                when "Hover + Check out" 
                    dropd_cart.hover
                    dropd_cartBtn.click

                when "Remove"
                    dropd_cart.hover
                    icon_delete.click
                    
            end
        end

        def selectTopMenu(optionName)
            box_topMenu.click_on(optionName)
        end

    # end

    # metodos facilitadores

        # [Default Scope]
        # O scopeSelect seleciona cards/escopos. Sua utilidade esta ligada aos casos de id's dinamicos que não servem para mapeamentos  (Não utilize ID's Dinâmicos!! ~se possivel)
        # scopePointCSSS     ->  Selecionar um ponto detalhado que tenha um ID/CSSS relevante e único(de preferência)
        # scopeFullAreaCSSS  ->  Escolher uma palavra chave que possa destinguir seu escopo de outros. Lembrando que a palavra deve estar dentro do scopePointCSSS
        # scopeFullAreaCSSS  ->  Trabalhando com as Div's ancestrais do ponto escolhido, encontrar uma que separe bem os escopos e tenha um ID/CSSS relevante
        def scopeSelect(scopePointCSSS, scopeName, scopeFullAreaCSSS)
            nodeScope = page.find(scopePointCSSS, text: scopeName)
            nodeScope = nodeScope.ancestor(scopeFullAreaCSSS)
            return nodeScope
        end

        def useScroll(yValue)
            execute_script %Q{window.scrollBy(0, #{yValue});}
        end

    # end
  
end
  