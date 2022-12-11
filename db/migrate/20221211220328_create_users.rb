class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :address
      t.string :state
      t.string :zip_code
      t.string :city
      t.string :password_digest
      t.boolean :employee, default: false

      t.timestamps
    end
  end
end
