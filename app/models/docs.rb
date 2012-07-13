# == Schema Information
#
# Table name: docs
#
#  id              :integer         not null, primary key
#  doclink_ref_num :string(255)
#  title           :string(255)
#  global_coord    :string(255)
#  parent          :string(255)
#  condor_ref_num  :string(255)
#  german_doc_num  :string(255)
#  author          :string(255)
#  chapter_name    :string(255)
#  training_type   :string(255)
#  comments        :text
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Docs < ActiveRecord::Base
end
