Then /^I should see below content$/ do |table|
  table.hashes.each do |element|
  step %{I should see "#{element[:content]}"}
 end
end
When /^I click on "(.*?)"$/ do |arg1|
  click_on(arg1)
end
When /^I click on 'Group Number "(.*?)"'$/ do |arg2|
  click_link(arg2)
end
Then /^I should see header for 'Group Documents for "(.*?)"'$/ do |arg3|
  if page.has_css?('#group_documents_results')
      within('#group_documents_results') do 
      page.should have_content(arg3)
  end
 end
end
Then /^I should see header for 'Group Status for "(.*?)"'$/ do |arg4|
   if page.has_css?('#group_status_results')
      within('#group_status_results') do 
      page.should have_content(arg4)
  end
 end
end