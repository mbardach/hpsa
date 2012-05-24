class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
			t.integer :course_id
      t.date :training_start_date
      t.date :training_end_date
      t.string :origin
      t.string :description
      t.integer :location_id
      t.integer :user_id
      t.string :language
      t.decimal :expected_duration
      t.decimal :effective_duration
      t.string :duration_unit
      t.integer :planned_participants
      t.integer :effective_participants
      t.string :status

      t.timestamps
    end
  end
end
