class SignInPage < BasePage

    element :box_filter, '#inventory_filter_container > select.product_sort_container'
  
    # @inventory.itemAndOption('Sauce Labs Onesi', 'preco')
    def itemAndOption (itemName, option)
        item = scopeSelect(itemName, '.inventory_list > .inventory_item')

        case option
            when "item"
                item.click_link_or_button(itemName)

            when "descricao"
                return item.find(".inventory_item_desc").text

            when "preco"
                return item.find(".inventory_item_price").text

            when "adicionar"
                item.click_link_or_button("ADD TO CART")

            else 
                puts "Nenhuma opção encontrada"
        end
    end

    def filterBy(option)
        box_filter.click
        sleep 1
         
        case option
            when "A a Z"
                find("#inventory_filter_container > select > option", :text => "Name (A to Z)").click

            when "Z a A"
                find("#inventory_filter_container > select > option", :text => "Name (Z to A)").click
                    
            when "Maior preco"
                find("#inventory_filter_container > select > option", :text => "Price (low to high)").click

            when "Maior preco"
                find("#inventory_filter_container > select > option", :text => "Price (high to low)").click

            else 
                puts "Nenhuma opção encontrada"

        end
        sleep 1
        
        box_filter.click
    end

    def go
        visit '/inventory.html'
    end
  
end