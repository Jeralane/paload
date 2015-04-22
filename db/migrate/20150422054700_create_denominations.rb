class CreateDenominations < ActiveRecord::Migration
  def change
    create_table :denominations do |t|
      t.references :network, index: true
      t.string :name
      t.string :description
      t.integer :days_expiry
      t.decimal :retail_price, precision: 8, scale: 2

      t.timestamps null: false
    end
    add_foreign_key :denominations, :networks
  end
end
