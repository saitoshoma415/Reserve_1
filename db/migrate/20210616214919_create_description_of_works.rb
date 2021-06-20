class CreateDescriptionOfWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :description_of_works do |t|
      t.date :commencement_date

      t.timestamps
    end
  end
end
