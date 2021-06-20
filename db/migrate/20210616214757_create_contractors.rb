class CreateContractors < ActiveRecord::Migration[6.1]
  def change
    create_table :contractors do |t|
      t.string :company_name
      t.string :contact_person
      t.string :email_
      t.string :address

      t.timestamps
    end
  end
end
