Given 'There is a country "$name"' do |country_name|
  create(:country, display_name: country_name)
end

When(/^I go to the (.+) page/) do |page_name|
  visit path_to(page_name)
end

When(/I fill-in the '([^']+)' with '([^']+)'/) do |field, value|
  fill_in field, with: value
end

When 'I click "$text"' do |text|
  click_button text
end

When(/I select '([^']+)' in '([^']+)'/) do |select_value, select_id|
  select select_value, from: select_id
end

Then(/I am on the (.+) page/) do |page_name|
  expect(current_path).to eq(path_to(page_name))
end

Then(/I see an error message that contains "([^"]+)"/) do |text|
  expect(page).to have_content(text)
end
