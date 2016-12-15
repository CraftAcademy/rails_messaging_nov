
When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^that I'm not logged in$/) do
  logout
end

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
  elsif page == "index"
      visit root_path
  elsif page == "Log in"
      visit new_user_session_path
  elsif page == "sign up"
      visit new_user_registration_path
  end
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I should be on the "([^"]*)" page$/) do |page|
  if page == "/"
    expect(page).to eq root_path
  elsif page == "Sign in"
  end
end


Given(/^show me the page$/) do
  save_and_open_page
end



