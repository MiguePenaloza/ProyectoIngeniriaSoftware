Given('visito la pagina de resultado') do
    visit '/resultadojuego'
  end
  
  Then('veo el mensaje de {string}') do |string|
    visit '/resultadojuego'
  end