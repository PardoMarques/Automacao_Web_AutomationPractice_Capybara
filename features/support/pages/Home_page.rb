class HomePage < BasePage

    # mapeamento dos elementos

        element :box_productList, '#homefeatured'
        element :box_layerCart, '#layer_cart'

        element :btn_continueShop, 'div.button-container > span > span > i'

        element :text_qntItens, '#layer_cart_product_quantity'
        element :text_colorItem, '#layer_cart_product_attributes'
    
    # end

    # metodos
        
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

        def clickNextCheckout
            sleep(2)
            box_layerCart.click_on('Proceed to checkout')
            sleep(2)
        end
    
        def go
            visit '/index.php?'
        end

    # end
    
end
    
    
