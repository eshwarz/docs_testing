<<<<<<< HEAD

=======
>>>>>>> 1bccb0253fd6e678897f44842b94cab029fc5b97
#When /^I click on "(.*?)"$/ do |link|
 # click_link link
#end

<<<<<<< HEAD

=======
>>>>>>> 1bccb0253fd6e678897f44842b94cab029fc5b97
#Then /^I click Edit inside "(.*?)"$/ do |row|
#	within "##{row}" do
#		step %{I click on "Edit"}
#	end
<<<<<<< HEAD
=======

#end
>>>>>>> 1bccb0253fd6e678897f44842b94cab029fc5b97

#end
And /^I confirm Popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

<<<<<<< HEAD



=======
Then /^I click Edit inside "(.*?)"$/ do |row|
	within "##{row}" do
		step %{I click on "Edit"}
	end
end
>>>>>>> 1bccb0253fd6e678897f44842b94cab029fc5b97
