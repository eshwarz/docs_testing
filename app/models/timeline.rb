class Timeline < ActiveRecord::Base

	belongs_to :version
	
	attr_accessible :timeline_type, :date, :comment, :version_id

	def self.timeline_types
		[
			'Final draft to PQS BMT',
			'Tech review period',
			'out for stakeholder review',
			'stakeholder review ends',
			'author adjudication complete',
			'to PQS CT for OU review',
			'OU review complete',
			'OU review mtg',
			'approval',
			'effective and LIA due'
		]
	end

end
