class CreateLoadRequests < ActiveRecord::Migration
  def change
    create_table :load_requests do |t|
      t.references :mobile_contact, index: true
      t.references :denomination, index: true
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :load_requests, :mobile_contacts
    add_foreign_key :load_requests, :denominations
  end
end
