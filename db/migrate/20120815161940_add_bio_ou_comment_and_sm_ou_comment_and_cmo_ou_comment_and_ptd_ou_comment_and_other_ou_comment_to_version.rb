class AddBioOuCommentAndSmOuCommentAndCmoOuCommentAndPtdOuCommentAndOtherOuCommentToVersion < ActiveRecord::Migration
  def change
    add_column :versions, :bio_ou_comment, :text

    add_column :versions, :sm_ou_comment, :text

    add_column :versions, :cmo_ou_comment, :text

    add_column :versions, :ptd_ou_comment, :text

    add_column :versions, :other_ou_comment, :text

  end
end
