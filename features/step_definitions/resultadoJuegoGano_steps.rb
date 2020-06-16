Given('visito la pagina de resultado') do
    visit '/resultadoganaste'
  end
  
  Then('veo el mensaje de {string}') do |string|
    visit '/resultadoganaste'
  end