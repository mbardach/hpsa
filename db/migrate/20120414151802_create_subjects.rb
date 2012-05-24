class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_code
      t.string :subject_description
      t.string :subject_way
      t.string :audience
      t.integer :company_id
      t.integer :module_group_id

      t.timestamps
    end
  end
end
