class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :description_of_work_id
      t.integer :orderer_id
      t.integer :contractor_id
      t.integer :states, default: 0, null: false, limit: 1
      t.timestamps
    end
  end
end
