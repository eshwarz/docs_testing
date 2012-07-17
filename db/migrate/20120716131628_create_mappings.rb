class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.references :docs
      t.string :us_cfrs
      t.string :japan
      t.string :pic_s
      t.string :eudralex
      t.string :iso
      t.string :ich

      t.timestamps
    end
    add_index :mappings, :docs_id
  end
end
