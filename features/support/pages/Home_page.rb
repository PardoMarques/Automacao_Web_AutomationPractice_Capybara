class HomePage < BasePage

    # mapeamento dos elementos

        element :box_topMenu, '#block_top_menu'
        element :box_productList, '#homefeatured'

        element :btn_continueShop, 'div.button-container > span > span > i'

        element :text_qntItens, '#layer_cart_product_quantity'
        element :text_colorItem, '#layer_cart_product_attributes'
    
    # end

    # metodos
    
        def selectTopMenu(optionName)
            box_topMenu.click_on(optionName)
        end
        
        def addToCartByName(optionName)
            cardScope = scopeSelect("h5 > a.product-name", optionName, "#homefeatured .ajax_block_product")
            
            cardScope.hover
            cardScope.click_on("Add to cart")
        end

        def addToCartByPrice(optionName)
            cardScope = scopeSelect(".right-block span.price", optionName, "#homefeatured .ajax_block_product")
            
            cardScope.hover
            cardScope.click_on("Add to cart")
        end

        def backToShop
            btn_continueShop.click
        end
    
        def go
            visit '/index.php?'
        end

    # end
    
end
    
    
