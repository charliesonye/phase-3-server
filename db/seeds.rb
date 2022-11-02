puts "🌱 Seeding spices..."

# Seed your database here


10.times do

    technician = Technician.create(name: Faker::Name.first_name ,
    title: "Technician",
    company_experience: rand(2..10))

    Customer.create(name: Faker::Name.first_name ,
    item: Faker::Device.model_name,
    item_received: Faker::Date.between(from: '2022-04-23', to: '2022-06-25'),
    item_returned: Faker::Date.between(from: '2022-06-26', to: '2022-11-01') ,
    description: "Device Damage",
    technician_id: technician.id)

end

# Customer.create(name: "Rich",
# item: "Apple Iphone",
# item_received: '2022-08-27' ,
# item_returned: '2022-09-05',
# description: "Screen cracked and no longer displays images",
# technician_id:1)

# Customer.create(name: "Issa",
# item: "JBL Speaker",
# item_received: '2022-10-02',
# description: "Can't hear music playing",
# technician_id:2)




# Technician.create(name: "Kelis",
# title: "Technician",
# company_experience: 1)


puts "✅ Done seeding!"
