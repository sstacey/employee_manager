# Seed Org Data
Org.create(code: 'Dallas', name: 'Dallas')
Org.create(code: 'La Cruces', name: 'Las Cruces')
Org.create(code: 'Savannah', name: 'Savannah')

# Seed Job Data
Job.create(code: 'PB', name: 'Personal Banker')
Job.create(code: 'Sup', name: 'Supervisor')
Job.create(code: 'OM', name: 'Operations Managers')

# Seed Employee Status Codes
EmployeeStatus.create(code: '1', name: 'Active')
EmployeeStatus.create(code: '5', name: 'LOA')
EmployeeStatus.create(code: '2', name: 'Inactive')

# Seed manager data
Employee.create(first_name: 'Sterling', last_name: 'Archer', job_id: 3, org_id: 1, employee_status_id: 1)
Employee.create(first_name: 'Mallory', last_name: 'Archer', org_id: 2, job_id: 3, manager_id: 1, employee_status_id: 1)
Employee.create(first_name: 'Lana', last_name: 'Kane', org_id: 3, job_id: 3, manager_id: 1, employee_status_id: 1)

# Seed employee data
100.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  job_id = rand(0..2)
  org_id = rand(0..2)
  manager_id = rand(0..2)
  employee_status_id = 1
  Employee.create(first_name: first_name, last_name: last_name, job_id: job_id, org_id: org_id, manager_id: manager_id, employee_status_id: employee_status_id)
end
