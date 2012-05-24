class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :theme_code
      t.string :theme_description
      t.string :theme_private_field

      t.timestamps
    end
  end
end
