class Version < ActiveRecord::Base

	# after_create :set_default_associations
	validates :docs_id, :presence => true

	# relations
	has_many :timelines
	has_many :issues
	belongs_to :docs

	def set_default_associations
		
		# # default issues for created version
		# Issue.issue_types.each do |i|
		# 	self.issues.create( :issue_type => i, :issue => Issue.statuses[1] )
		# end
		
		# # default timelines for created version
		# Timeline.timeline_types.each do |t|
		# 	self.timelines.create( :timeline_type => t )
		# end
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
#  id                         :integer         not null, primary key
#  docs_id                    :integer
#  group_num                  :string(255)
#  version_number             :integer
#  comment                    :text
#  description_of_change      :text
#  capa_number                :integer
#  revision_type              :string(255)
#  created_at                 :datetime        not null
#  updated_at                 :datetime        not null
#  lia_status                 :string(255)
#  bio_ou                     :boolean
#  sm_ou                      :boolean
#  cmo_ou                     :boolean
#  ptd_ou                     :boolean
#  other_ou                   :boolean
#  final_draft_pqs_bmt        :date
#  tech_review                :date
#  out_for_stakeholder_review :date
#  stakeholder_review_ends    :date
#  author_adjudication        :date
#  pqs_ct_ou_review           :date
#  ou_review_complete         :date
#  ou_review_mtg              :date
#  approval                   :date
#  effective_lia_due          :date
#  bio_ou_comment             :text
#  sm_ou_comment              :text
#  cmo_ou_comment             :text
#  ptd_ou_comment             :text
#  other_ou_comment           :text
#

