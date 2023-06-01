puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "Cuts", value: 25, dev_id: 1, company_id: 1)
Freebie.create(item_name: "Tuts", value: 15, dev_id: 1, company_id: 2)
Freebie.create(item_name: "Pitch", value: 10, dev_id: 2, company_id: 1)
Freebie.create(item_name: "Fruit", value: 13, dev_id: 2, company_id: 2)
Freebie.create(item_name: "Makwe", value: 25, dev_id: 3, company_id: 1)
Freebie.create(item_name: "jest", value: 25, dev_id: 4, company_id: 3)
Freebie.create(item_name: "Gush", value: 25, dev_id: 5, company_id: 5)
Freebie.create(item_name: "Cuts", value: 25, dev_id: 4, company_id: 2)
Freebie.create(item_name: "Shield", value: 25, dev_id: 5, company_id: 5)
Freebie.create(item_name: "Cuts", value: 25, dev_id: 4, company_id: 3)
Freebie.create(item_name: "Foll", value: 25, dev_id: 4, company_id: 4)
Freebie.create(item_name: "Purr", value: 25, dev_id: 1, company_id: 2)
Freebie.create(item_name: "Jist", value: 25, dev_id: 2, company_id: 5)
Freebie.create(item_name: "Cuts", value: 25, dev_id: 2, company_id: 3)
Freebie.create(item_name: "Sahft", value: 25, dev_id: 1, company_id: 1)


puts "Seeding done!"
