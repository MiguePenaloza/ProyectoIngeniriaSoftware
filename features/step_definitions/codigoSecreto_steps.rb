Given('visito la pagina principal') do
    visit '/'
  end
  
Given('ingreso el {int} en el campo {string}') do |int, string2|
    fill_in(string2, :with => int)
end
  
Then('presiono el boton {string}') do |string|
    click_button(string)
end













