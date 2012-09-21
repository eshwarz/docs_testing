Then /^I should see these headings$/ do |table|
	table.hashes.each do |item|
		When %{I should see "#{item[:head]}"}
	end
end
