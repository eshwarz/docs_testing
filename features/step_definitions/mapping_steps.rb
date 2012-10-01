Then /^I Should see "(.*?)"$/ do |arg|
	page.should have_content(arg)
end
