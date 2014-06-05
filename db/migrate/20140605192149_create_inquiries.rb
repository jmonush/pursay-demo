class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.boolean :live_in_ny
      t.string :neighborhood
      t.string :zip
      t.boolean :retailer
      t.string :store_name
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :city

      t.timestamps
    end
  end
end
