class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :doclink_ref_num
      t.string :title
      t.string :global_coord
      t.string :parent
      t.string :condor_ref_num
      t.string :german_doc_num
      t.string :author
      t.string :chapter_name
      t.string :training_type
      t.text :comments

      t.timestamps
    end
  end
end
