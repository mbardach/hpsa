class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program_code
      t.string :program_title
      t.string :program_order
      t.string :program_description
      t.string :program_audience
      t.integer :company_id
      t.string :program_status
      t.decimal :program_duration, :precision => 5, :scale => 2
      t.string :program_unit

      t.timestamps
    end
  end
end
