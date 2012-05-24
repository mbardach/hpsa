class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :code
      t.string :name
      t.string :relationship
      t.integer :currency_id
      t.string :language
      t.integer :contact_principal_id
      t.integer :sales_contact_id
      t.integer :country_id
      t.boolean :blocked
      t.string :phone
      t.string :email
      t.integer :weekend_day_1
      t.integer :weekend_day_2
      t.boolean :management_flag
      t.text :memo

      t.timestamps
    end
  end
end
