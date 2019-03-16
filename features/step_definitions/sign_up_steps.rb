Given(/^I am on sign up page$/) do
  visit '/signup'
end

Given(/^I fillin (.+) with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |text|
  assert page.has_content?(text)
end
