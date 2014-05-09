When(/^I go to the (.+) page/) do |page_name|
  visit path_to(page_name)
end

When(/I fill-in the '([^']+)' with '([^']+)'/) do |field, value|
  fill_in field, with: value
end

When 'I click "$text"' do |text|
  click_button text
end


