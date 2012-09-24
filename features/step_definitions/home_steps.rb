Then /^I should see the following$/ do |table|
	table.hashes.each do |item|
		step %{I should see "#{item[:entry]}"}
	end
end

Then /^I should see search for documents by Doclink Ref Number$/ do
  page.should have_selector('#search_documents')
end