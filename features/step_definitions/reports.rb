Then /^I should see the "(.*?)"$/ do |arg|
	page.should have_content(arg)
end
When /^I click on "(.*?)"$/ do |arg1|
  click_on(arg1)
end
When /^I click on 'Group Number "(.*?)"'$/ do |arg2|
  click_link(arg2)
end
Then /^I should see 'Group Documents for "(.*?)"'$/ do |arg3|
  page.should have_content(arg3)
end
Then /^I should see 'Doclink Ref Num'$/ do
  page.should have_content('Doclink Ref Num')
end





