Given('visito la pagina de juego') do
    visit '/juego'
end

Given('pongo el {string} en el input {string}') do |string, string3|
    fill_in(string3, :with => string)
end
  
Then('apreto el boton {string}') do |string|
    click_button(string)
end
