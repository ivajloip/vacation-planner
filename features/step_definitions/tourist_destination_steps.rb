Then 'I can see destination with title "$title" in the list of destinations' do |title|
  expect(page).to have_content(title)
end

