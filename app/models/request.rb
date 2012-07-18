class Request < ActiveRecord::Base
	belongs_to :docs

	def self.request_types
		['New', 'Revised']
	end

	def self.timelines
		['D', 'E', 'F', 'G', 'H', 'Special']
	end

	def self.commitments
		['Yes', 'No']
	end

	def self.training_impacts
		['R&U only', 'Update', 'Create New']
	end

	def self.training_strategys
		['Read and Understand', 'WBT', 'ILT']
	end

	

end
# == Schema Information
#
# Table name: requests
#
#  id                         :integer         not null, primary key
#  requested_by               :text
#  requested_date             :date
#  team_sponsor               :string(255)
#  request_type               :string(255)
#  proposed_version_number    :integer
#  justification              :text
#  description                :text
#  sites                      :text
#  timeline                   :string(255)
#  team                       :text
#  commitment                 :string(255)
#  commitment_details         :string(255)
#  superseded_docs            :text
#  training_impact            :string(255)
#  training_strategy          :string(255)
#  pqs_bmt_date               :date
#  pqs_bmt_decision_rationale :text
#  pqs_ct_date                :date
#  pqs_ct_decision_rationale  :text
#  request_closed_date        :date
#  created_at                 :datetime        not null
#  updated_at                 :datetime        not null
#  docs_id                    :integer
#  comments                   :text
#

