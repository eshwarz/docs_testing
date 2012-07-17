class Mapping < ActiveRecord::Base
  belongs_to :docs
end
# == Schema Information
#
# Table name: mappings
#
#  id         :integer         not null, primary key
#  docs_id    :integer
#  us_cfrs    :string(255)
#  japan      :string(255)
#  pic_s      :string(255)
#  eudralex   :string(255)
#  iso        :string(255)
#  ich        :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

