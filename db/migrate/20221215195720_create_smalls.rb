class CreateSmalls < ActiveRecord::Migration[7.0]
  def change
    create_table :smalls do |t|
      t.belongs_to :apperral, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
