class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :company_id
      t.string :level_1
      t.string :level_2
      t.string :department
      t.integer :hierarchy_level

      t.timestamps
    end
  end
end
