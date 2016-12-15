Given(/^I am logged in as User$/) do
	%q{
		Given that there is a user named "Test-User"
    And "Test-User" is logged in
	}
end

And(/^I have clicked the "([^"]*)" button$/) do |button|
	click_button button
end