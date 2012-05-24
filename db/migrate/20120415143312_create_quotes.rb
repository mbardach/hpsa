class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.date :requested_date
      t.integer :user_id
      t.string :status
      t.integer :company_id
      t.string :origin
      t.text :comment
      t.string :delay
      t.date :latest_by_date

      t.timestamps
    end
  end
end
