class CreateModuleGroups < ActiveRecord::Migration
  def change
    create_table :module_groups do |t|
      t.string :module_group_code
      t.string :module_group_description
      t.string :audience
      t.integer :company_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
