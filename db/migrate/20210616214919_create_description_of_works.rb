class CreateDescriptionOfWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :description_of_works do |t|
      t.date :commencement_date
      t.integer :types, default: 0, null: false, limit: 1
      t.integer :floors, default: 0, null: false, limit: 1
      t.integer :buildings, default: 0, null: false, limit: 1
      t.integer :modes, default: 0, null: false, limit: 1
      t.integer :formation_level, default: 0, null: false, limit: 1
      t.integer :work_time, default: 0, null: false, limit: 1
      t.timestamps
    end
  end
end
