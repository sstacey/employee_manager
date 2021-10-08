# Seed employee data
100.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Employee.create(first_name: first_name, last_name: last_name)
end