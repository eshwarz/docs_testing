Then /^I should see the "(.*?)"$/ do |arg|
	page.should have_content(arg)
end
