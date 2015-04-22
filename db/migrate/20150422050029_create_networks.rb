class CreateNetworks < ActiveRecord::Migration
  def up
    create_table :networks do |t|
      t.string :name

      t.timestamps null: false
    end

    # Initialize mobile networks
    Network.create(name: 'Smart')
    Network.create(name: 'Globe')
    Network.create(name: 'Talk N Text')
    Network.create(name: 'Sun Cellular')
    Network.create(name: 'Touch Mobile')
  end

  def down
    drop_table :networks
  end
end
