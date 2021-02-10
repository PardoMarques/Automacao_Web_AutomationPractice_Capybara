Então("estará contido o seguinte texto {string} na página") do |textPage|
  expect(page).to have_content textPage  
end

Então("não estará contido o seguinte texto {string} na página") do |notVisibleElement|
  expect(page).to_not have_content notVisibleElement
end
