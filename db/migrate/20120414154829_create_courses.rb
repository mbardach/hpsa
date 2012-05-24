class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_title
      t.string :course_introduction
      t.string :course_description
      t.string :course_training_material_ref
      t.string :course_planned_duration, :precision => 5, :scale => 2
      t.string :decimal
      t.integer :subject_id
      t.string :course_status
      t.string :course_audience
      t.integer :company_id
      t.integer :course_order
      t.string :course_type

      t.timestamps
    end
  end
end
