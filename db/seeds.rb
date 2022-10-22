puts "🌱 Seeding spices..."

# Seed your database here

Customer.create(name: "Sean",
item: "Apple Laptop",
item_received: '2022-07-15 10:30:24',
item_returned: '2022-09-17 02:45:15',
description: "Water spilled on keyboard",
technician_id:1)

Customer.create(name: "Rich",
item: "Apple Iphone",
item_received: '2022-08-27 04:10:44',
item_returned: '2022-09-05 01:22:23',
description: "Screen cracked and no longer displays images",
technician_id:1)

Customer.create(name: "Issa",
item: "JBL Speaker",
item_received: '2022-10-02 10:30:24',
description: "Can't hear music playing",
technician_id:2)


Technician.create(name: "Mike",
title: "Senior Technician",
company_experience: 2)

Technician.create(name: "Kelis",
title: "Technician",
company_experience: 1)


puts "✅ Done seeding!"
