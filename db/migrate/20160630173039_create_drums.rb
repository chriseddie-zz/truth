class CreateDrums < ActiveRecord::Migration
  def change
    create_table :drums do |t|
      t.string :drumTitle
      t.string :drumSize
      t.string :drumPhoto
      t.string :drumPrice
      t.string :drumCustomer
      t.string :drumCustomerSocial
      t.text :drumDetails

      t.timestamps null: false
    end
  end
end
