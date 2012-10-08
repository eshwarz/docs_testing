When /^I click on "(.*?)"$/ do |link|
  click_link link
end

Then /^I click Edit inside "(.*?)"$/ do |row|
	within "##{row}" do
		step %{I click on "Edit"}
	end
end

Then /^I confirm popup$/ do
  page.driver.browser.switch_to.alert.accept
end








