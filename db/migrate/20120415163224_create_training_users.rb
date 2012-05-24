class CreateTrainingUsers < ActiveRecord::Migration
  def change
    create_table :training_users do |t|
      t.integer :training_id
      t.integer :user_id
      t.string :status
      t.integer :quote_details_id

      t.timestamps
    end
  end
end
