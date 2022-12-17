class AddPriceToApperral < ActiveRecord::Migration[7.0]
  def change
    add_column :apperrals, :price, :float
  end
end
