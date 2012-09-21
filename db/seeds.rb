# creating authentication types
if AuthenticationType.count == 0
	puts "Creating Types of Authentication"
	types = ['devise', 'facebook', 'linkedin', 'twitter']
	types.each do |type|
		AuthenticationType.create( :provider => type, :enable => true )
	end
end

if Rails.env.test?
	# creating test user in test env
	if User.count == 0
		if User.create( :first_name => 'Test', :last_name => 'User', :email => 'test_user@example.com', :password => 'password', :password_confirmation => 'password' )
			puts "Creating Test user"
		end
	end
end

# Creating an admin user
if AdminUser.count == 0
	puts "Creating Admin account"
	AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
end

require 'spreadsheet'
# Parsing documents spreadsheet and seeding it
if Docs.count == 0
	num = 20
	Spreadsheet.open('db/documents.xls') do |book|
		book.worksheet('owssvr').each_with_index do |row, index|
			break if row[0].nil?
			next if index == 0
			doc = Docs.create( :doclink_ref_num => row[1], :parent => row[0], :condor_ref_num => row[2], :german_doc_num => row[3],  :title => row[5] )
			doc.versions.create( :version_number => 1 )
			puts "Record #{index} inserted"
		end
	end
end

# if Version.count == 0
# 	num = 20
# 	g_nums = Version.group_nums
# 	lias = Version.lia_statuses
# 	revs = Version.revision_types
# 	Docs.all.each_with_index do |doc, index|
# 		rand(20).times do |i|
# 			j = i+1
# 			doc.versions.create( :docs_id => doc.id, :group_num => g_nums[rand(g_nums.count)], :version_number => j, :lia_status => lias[rand(lias.count)], :comment => "this is test comment for doc no #{index+1}", :description_of_change => "Description for doc no #{index+1}", :capa_number => rand(999999), :revision_type => revs[rand(revs.count)] )
# 			puts "Doc versions seeds for #{index+1}"
# 		end
# 		if index > num
# 			break
# 		end
# 	end
# end


# if Request.count == 0
# 	num = 20
# 	request_types = [ 'New', 'Revised' ]
# 	check = [ 'yes', 'No' ]
# 	t_impact = [ 'R&U only', 'Update', 'Create New' ]
# 	t_strategy = [ 'Read and Understand', 'WBT', 'ILT' ]
# 	p_timeline = [ 'D', 'E', 'F', 'G', 'H', 'Special' ]
# 	Docs.all.each_with_index do |doc, index|
# 		rand(15).times do |i|
# 			j = i+1
# 			doc.requests.create(
# 													:requested_by => "Requested by #{j}",
# 													:requested_date => "#{rand(31)+1}-#{rand(12)+1}-#{rand(12)+2000}",
# 													:docs_id => doc.id,
# 													:team_sponsor => "Team sponsor #{j}",
# 													:request_type => request_types[rand(2)],
# 													:proposed_version_number => rand(999999),
# 													:justification => "Justification goes here #{j}",
# 													:description => "Description goes here #{j}",
# 													:sites => "Sites #{rand(127)+1}",
# 													:timeline => p_timeline[rand(6)],
# 													:team => "member #{rand(50+1)}, member #{rand(50+1)}, member #{rand(50+1)}",
# 													:commitment => check[rand(2)],
# 													:commitment_details => "Commitment details",
# 													:superseded_docs => "doc #{rand(127)+1}, doc #{rand(127)+1}, doc #{rand(127)+1}",
# 													:training_impact => t_impact[rand(3)],
# 													:training_strategy => t_strategy[rand(3)],
# 													:pqs_bmt_date => "#{rand(31)+1}-#{rand(12)+1}-#{rand(12)+2000}",
# 													:pqs_bmt_decision_rationale => "PQS CT Decision rationale",
# 													:pqs_ct_date => "#{rand(31)+1}-#{rand(12)+1}-#{rand(12)+2000}",
# 													:pqs_ct_decision_rationale => "PQS CT Decision rationale",
# 													:request_closed_date => "#{rand(31)+1}-#{rand(12)+1}-#{rand(12)+2000}",
# 													:comments => "This is num #{j} comment for doc #{index+1}"
# 													)
# 			puts "Doc requests seeds for #{index+1}"

# 		end
# 		if index > num
# 			break
# 		end
# 	end
# end

# if Mapping.count == 0
# 	num = 20
# 	Docs.all.each_with_index do |doc, index|
# 		rand(5).times do |i|
# 			j = i+1
# 			doc.mappings.create( 
# 													:us_cfrs => "cfrs #{j}",
# 													:japan => "japan #{j}",
# 													:pic_s => "pic s #{j}",
# 													:eudralex => "eudralex #{j}",
# 													:iso => "iso #{j}",
# 													:ich => "ich #{j}"
# 												 )
# 			puts "Doc mappings seeds for #{index+1}"
# 		end
# 		if index > num
# 			break
# 		end
# 	end
# end

# if Issue.count == 0
# 	temp_num = 20						#remove this line for production
# 	issue_types = Issue.issue_types
# 	issue_statuses = Issue.statuses

# 	Version.all.each_with_index do |version, index|
# 		issue_types.each do |i|
# 			version.issues.create( :issue_type => i, :issue => issue_statuses[1] )
# 			puts "Version issues seeds for #{index+1}"
# 		end
# 		if temp_num > index		#remove this line for production
# 			break								#remove this line for production
# 		end										#remove this line for production
# 	end
# end

# if Timeline.count == 0
# 	temp_num = 20						#remove this line for production
# 	timeline_types = Timeline.timeline_types

# 	Version.all.each_with_index do |version, index|
# 		timeline_types.each do |t|
# 			version.timelines.create( :timeline_type => t )
# 			puts "Version timelines seeds for #{index+1}"
# 		end
# 		if temp_num > index		#remove this line for production
# 			break								#remove this line for production
# 		end										#remove this line for production
# 	end
# end

if Timeline.count == 0
	timeline_types = Timeline.timeline_types
	group_nums = Version.group_nums
	group_nums.pop # removing special option from array
	group_nums.each do |g_num|
		timeline_types.each do |t|
			Timeline.create( :timeline_type => t, :group_num => g_num )
			puts "Timeline seeds for #{g_num}"
		end
	end
end