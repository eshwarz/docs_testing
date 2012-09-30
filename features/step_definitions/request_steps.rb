Then /^I click Edit inside "(.*?)"$/ do |row|
	within "##{row}" do
		step %{I click on "Edit"}
	end
end