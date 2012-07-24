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
