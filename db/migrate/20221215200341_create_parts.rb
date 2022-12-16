class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.belongs_to :rifle, null: false, foreign_key: true
      t.string :description
      t.integer :inventory
      t.float :price

      t.timestamps
    end
  end
end
