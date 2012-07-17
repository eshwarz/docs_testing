class Request < ActiveRecord::Base
	belongs_to :docs
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
#  comments                   :string(255)
#  text                       :string(255)
#  created_at                 :datetime        not null
#  updated_at                 :datetime        not null
#  docs_id                    :integer
#

