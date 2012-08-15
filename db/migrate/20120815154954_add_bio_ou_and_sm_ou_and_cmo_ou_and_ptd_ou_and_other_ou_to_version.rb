class AddBioOuAndSmOuAndCmoOuAndPtdOuAndOtherOuToVersion < ActiveRecord::Migration
  def change
    add_column :versions, :bio_ou, :boolean

    add_column :versions, :sm_ou, :boolean

    add_column :versions, :cmo_ou, :boolean

    add_column :versions, :ptd_ou, :boolean

    add_column :versions, :other_ou, :boolean

  end
end
