class AddLiaStatusToVersion < ActiveRecord::Migration
  def change
    add_column :versions, :lia_status, :string

  end
end
