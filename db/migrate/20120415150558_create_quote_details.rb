class CreateQuoteDetails < ActiveRecord::Migration
  def change
    create_table :quote_details do |t|
      t.integer :quote_id
      t.integer :course_id
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
