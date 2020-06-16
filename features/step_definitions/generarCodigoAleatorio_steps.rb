Given('visito la pagina del juego') do
    visit '/'
  end
  
  Then('presiono el boton de {string}') do |string|
    click_button(string)
  end