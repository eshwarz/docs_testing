class RemoveCommentsAndTextFromRequest < ActiveRecord::Migration
  def up
    remove_column :requests, :comments
        remove_column :requests, :text
      end

  def down
    add_column :requests, :text, :string
    add_column :requests, :comments, :string
  end
end
