class Employee < ApplicationRecord
  belongs_to :job
  belongs_to :org
  belongs_to :employee_status
  has_many :subordinates, class_name: 'Employee', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'Employee', optional: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job_id, presence: true
  validates :org_id, presence: true

  def self.search(search)
    if search
      where('lower(first_name) LIKE :search OR lower(last_name) LIKE :search OR lower(code) LIKE :search', search: "#{search.downcase}%")
    else
      all
    end
  end
  

  def full_name
    "#{first_name} #{last_name}".titleize
  end
end
