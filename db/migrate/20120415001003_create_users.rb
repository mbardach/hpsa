class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :user_code
      t.string :acronym
      t.string :email
      t.string :email_status
      t.date :recruited_at
      t.string :status
      t.string :title
      t.integer :department_id
      t.boolean :academy_flag
      t.boolean :manager_flag
      t.boolean :trainer_flag
      t.integer :hierarchy_level
      t.integer :company_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
