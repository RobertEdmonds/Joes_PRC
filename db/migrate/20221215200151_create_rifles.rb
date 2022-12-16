class CreateRifles < ActiveRecord::Migration[7.0]
  def change
    create_table :rifles do |t|
      t.float :caliper
      t.text :specs
      t.float :price
      t.boolean :pre_assembled
      t.integer :inventory

      t.timestamps
    end
  end
end
