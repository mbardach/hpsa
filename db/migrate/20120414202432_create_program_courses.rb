class CreateProgramCourses < ActiveRecord::Migration
  def change
    create_table :program_courses do |t|
      t.integer :course_id
      t.integer :program_id
      t.decimal :duration , :precision => 5, :scale => 2
      t.string :unit
      t.integer :program_course_order
      t.string :description

      t.timestamps
    end
  end
end
