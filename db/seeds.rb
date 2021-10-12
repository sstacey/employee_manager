# Seed Org Data
Org.create(code: 'Dallas', name: 'Dallas')
Org.create(code: 'La Cruces', name: 'Las Cruces')
Org.create(code: 'Savannah', name: 'Savannah')

# Seed Job Data
Job.create(code: 'PB', name: 'Personal Banker')
Job.create(code: 'Sup', name: 'Supervisor')
Job.create(code: 'OM', name: 'Operations Managers')

# Seed employee data
100.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  job_id = rand(0..2)
  org_id = rand(0..2)
  Employee.create(first_name: first_name, last_name: last_name, job_id: job_id, org_id: org_id)
end