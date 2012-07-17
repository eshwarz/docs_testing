# creating authentication types
if AuthenticationType.count == 0
	puts "Creating Types of Authentication"
	types = ['devise', 'facebook', 'linkedin', 'twitter']
	types.each do |type|
		AuthenticationType.create( :provider => type, :enable => true )
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
	Spreadsheet.open('db/documents.xls') do |book|
		book.worksheet('owssvr').each_with_index do |row, index|
			break if row[0].nil?
			next if index == 0
			Docs.create( :doclink_ref_num => row[1], :parent => row[0], :condor_ref_num => row[2], :german_doc_num => row[3],  :title => row[5] )
			puts "Record #{index} inserted"
		end
	end
end

if Version.count == 0
	Docs.all.each_with_index do |doc, index|
		rand(20).times do |i|
			j = i+1
			doc.versions.create( :docs_id => doc.id, :group_num => rand(400), :version_number => j, :comment => "this is test comment for doc no #{index+1}", :description_of_change => "Description for doc no #{index+1}", :capa_number => rand(999999), :revision_type => 'random' )
			puts "Docs seeds for #{index+1}"
		end
	end
end