class CreateOrderers < ActiveRecord::Migration[6.1]
  def change
    create_table :orderers do |t|
      t.string :company_name
      t.string :contact_
      t.string :person
      t.string :email_address

      t.timestamps
    end
  end
end
