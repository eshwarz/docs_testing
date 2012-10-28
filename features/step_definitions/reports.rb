When /^I click on following links$/ do |table|
      table.hashes.each do|row|
      step %{I click on "#{row[:link]}"} 
  end
end

Then /^I should see below content$/ do |table|
      table.hashes.each do |element|
      step %{I should see "#{element[:content]}"}
  end
end

Then /^I should see header for 'Group Documents for "(.*?)"'$/ do |header1|
      page.has_css?('#group_documents_results')
      within('#group_documents_results') do 
      page.should have_content(header1)
  end
end

Then /^I should see header for 'Group Status for "(.*?)"'$/ do |header2|
      page.has_css?('#group_status_results')
      within('#group_status_results') do 
      page.should have_content(header2)
  end
end

Then /^I should see search for documents by Search By Document Number$/ do
   if page.has_css?('#search_by_document_number')
      page.should have_selector('#search_bye_document_number')
  end
end

Then /^I should see header for "(.*?)"$/ do |header3|
      page.should have_content(header3)
end