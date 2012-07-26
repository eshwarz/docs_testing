class Version < ActiveRecord::Base

	after_create :set_default_associations
	validates :docs_id, :presence => true

	# relations
	has_many :timelines
	has_many :issues
	belongs_to :docs

	def set_default_associations
		
		# default issues for created version
		Issue.issue_types.each do |i|
			self.issues.create( :issue_type => i, :issue => Issue.statuses[1] )
		end
		
		# default timelines for created version
		Timeline.timeline_types.each do |t|
			self.timelines.create( :timeline_type => t )
		end
	end

	def self.group_nums
		['D', 'E', 'F', 'G', 'H', 'Special']
	end

	def self.lia_statuses
		['On hold', 'In progress']
	end

	def self.revision_types
		['New', 'Major', 'Minor']
	end

end
# == Schema Information
#
# Table name: versions
#
#  id                    :integer         not null, primary key
#  docs_id               :integer
#  group_num             :string(255)
#  version_number        :integer
#  comment               :text
#  description_of_change :text
#  capa_number           :integer
#  revision_type         :string(255)
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#  lia_status            :string(255)
#

