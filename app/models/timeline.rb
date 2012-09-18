class Timeline < ActiveRecord::Base

	attr_accessible :timeline_type, :date, :comment, :group_num

	# default_scope :order => 'timeline_type'

	def self.timeline_types
		[
			'Final draft to PQS BMT',
			'Tech review period',
			'Out for stakeholder review',
			'Stakeholder review ends',
			'Author adjudication complete',
			'To PQS CT for OU review',
			'OU review complete',
			'OU review mtg',
			'Approval',
			'Effective and LIA due'
		]
	end

end
# == Schema Information
#
# Table name: timelines
#
#  id            :integer         not null, primary key
#  date          :date
#  comment       :text
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  timeline_type :string(255)
#  group_num     :string(255)
#

