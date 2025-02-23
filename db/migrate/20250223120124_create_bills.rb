class CreateBills < ActiveRecord::Migration[8.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :address
      t.string :npa
      t.string :city
      t.string :email
      t.string :phone
      t.string :iban

      t.timestamps
    end
  end
end
