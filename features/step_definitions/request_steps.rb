<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
>>>>>>> f172acc123acaac1f297469d5b13d1afc3d1c34c
#When /^I click on "(.*?)"$/ do |link|
 # click_link link
#end

#Then /^I click Edit inside "(.*?)"$/ do |row|
#	within "##{row}" do
#		step %{I click on "Edit"}
#	end

#end

#end
When /^I confirm Popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

Then /^I click Edit inside "(.*?)"$/ do |row|
	within "##{row}" do
		step %{I click on "Edit"}
	end
end
<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
>>>>>>> 80936af0c343803eeef75291321c26445a776e57
>>>>>>> 37fe993a02eee72066595dc9bc35c84630cb8ce2
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
>>>>>>> f172acc123acaac1f297469d5b13d1afc3d1c34c
