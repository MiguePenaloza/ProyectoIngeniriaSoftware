Given('ingreso a la pagina de resultado') do
    visit '/resultadoperdiste'
  end
  
  Then('veo el siguiente mensaje de {string}') do |string|
    visit '/resultadoperdiste'
  end