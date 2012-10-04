<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
>>>>>>> f172acc123acaac1f297469d5b13d1afc3d1c34c
>>>>>>> 5307de80b6b8ea22d3aa3e0620b1911f0ca647d2
#When /^I click on "(.*?)"$/ do |link|
 # click_link link
#end

<<<<<<< HEAD

=======
>>>>>>> 5307de80b6b8ea22d3aa3e0620b1911f0ca647d2
#Then /^I click Edit inside "(.*?)"$/ do |row|
#	within "##{row}" do
#		step %{I click on "Edit"}
#	end
<<<<<<< HEAD
=======

>>>>>>> 5307de80b6b8ea22d3aa3e0620b1911f0ca647d2
#end

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
<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
>>>>>>> 80936af0c343803eeef75291321c26445a776e57
>>>>>>> 37fe993a02eee72066595dc9bc35c84630cb8ce2
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
>>>>>>> f172acc123acaac1f297469d5b13d1afc3d1c34c
>>>>>>> 5307de80b6b8ea22d3aa3e0620b1911f0ca647d2
