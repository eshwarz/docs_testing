
#When /^I click on "(.*?)"$/ do |link|
 # click_link link
#end

#Then /^I click Edit inside "(.*?)"$/ do |row|
#	within "##{row}" do
#		step %{I click on "Edit"}
#	end
#end

And /^I confirm Popup$/ do
  page.driver.browser.switch_to.alert.accept    
end


Then /^I click Edit inside "(.*?)"$/ do |row|
	within "##{row}" do
		step %{I click on "Edit"}
	end
end
