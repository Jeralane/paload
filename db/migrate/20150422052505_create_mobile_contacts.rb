class CreateMobileContacts < ActiveRecord::Migration
  def change
    create_table :mobile_contacts do |t|
      t.references :network, index: true
      t.string :number
      t.references :subscriber, index: true

      t.timestamps null: false
    end
    add_foreign_key :mobile_contacts, :networks
    add_foreign_key :mobile_contacts, :subscribers
  end
end
