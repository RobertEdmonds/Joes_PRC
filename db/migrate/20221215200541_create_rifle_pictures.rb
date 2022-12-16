class CreateRiflePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :rifle_pictures do |t|
      t.belongs_to :rifle, null: false, foreign_key: true
      t.string :image_url
      t.integer :order_number

      t.timestamps
    end
  end
end
