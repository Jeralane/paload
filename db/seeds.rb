# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#



# Initialize Denominations
smart = Network.find_by(name: 'Smart')
Denomination.create(network: smart,
                    name: 'SmartLoad 15',
                    description: 'P15 Airtime Load',
                    days_expiry: 15,
                    retail_price: 15.00)

Denomination.create(network: smart,
                    name: 'SmartLoad 30',
                    description: 'P30 Airtime Load',
                    days_expiry: 15,
                    retail_price: 30.00)

Denomination.create(network: smart,
                    name: 'SmartLoad 50',
                    description: 'P50 Airtime Load',
                    days_expiry: 15,
                    retail_price: 50.00)

Denomination.create(network: smart,
                    name: 'SmartLoad 60',
                    description: 'P60 Airtime Load',
                    days_expiry: 30,
                    retail_price: 50.00)

