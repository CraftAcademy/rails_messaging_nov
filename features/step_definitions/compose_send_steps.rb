Given(/^I am logged in as User$/) do
	%q{
		Given that there is a user named "Test-User"
    And "Test-User" is logged in
	}
end


When(/^I select "([^"]*)" from recipients$/) do |recipient|
  select recipient, from: 'Recipients'
end

