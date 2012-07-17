class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.references :docs
      t.string :group_num
      t.integer :version_number
      t.text :comment
      t.text :description_of_change
      t.integer :capa_number
      t.string :revision_type

      t.timestamps
    end
    add_index :versions, :docs_id
  end
end
