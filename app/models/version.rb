class Version < ActiveRecord::Base

	validates :docs_id, :presence => true
	
  belongs_to :docs
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
#

