Given(/^that there is a user named "([^"]*)"$/) do |name|
  # user = User.create(name: name, email: "user@user.com", password: "12345678")
  # The above comment is left in to demonstrate that FactoryGirl is performing the same task below.
  user = FactoryGirl.create(:user, name: name)
end

Given(/^"([^"]*)" is logged in$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Given(/^I am on the "([^"]*)" page$/) do |page|
  if page == "inbox"
    visit mailbox_inbox_path
  end
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I should be on the "([^"]*)" page$/) do |page|
if page == "/"
  expect(page).to eq root_path
end
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end

Given(/^show me the page$/) do
  save_and_open_page
end
