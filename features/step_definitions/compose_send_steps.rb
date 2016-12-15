Given(/^I am logged in as User$/) do
	%q{
		Given that there is a user named "Test-User"
    And "Test-User" is logged in
	}
end


When(/^I select "([^"]*)" from recipients$/) do |recipient|
  @user = User.find_by(name: recipient)
	page.execute_script("$('select').val(#{@user.id})")
  page.execute_script("$('select').trigger('chosen:updated')")
  # expect(page).to have_content recipient
end

