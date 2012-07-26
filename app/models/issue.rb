class Issue < ActiveRecord::Base

	belongs_to :version
	
	attr_accessible :issue, :issue_type, :comment, :version_id

	def self.issue_types
		[ 'Bio OU', 'SM OU', 'CMO OU', 'PTD OU', 'Other OU' ]
	end

	def self.statuses
		[ 'Yes', 'No' ]
	end

end
# == Schema Information
#
# Table name: issues
#
#  id         :integer         not null, primary key
#  issue      :string(255)
#  comment    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  version_id :integer
#  issue_type :string(255)
#

