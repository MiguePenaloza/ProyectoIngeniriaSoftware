Given('ingreso al menu de configuraciones') do
    visit '/configuracion'
  end
  
  Given('luego presiono el boton de {string}') do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Given('hago click en {string}') do |string|
    click_button(string)
  end
  
  Then('veo la pagina principal del juego') do
    visit '/'
  end