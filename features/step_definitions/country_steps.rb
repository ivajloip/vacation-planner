Then 'I can see country with name "$name" in the list of countries' do |name|
  expect(page).to have_content(name)
end
