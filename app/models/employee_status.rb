class EmployeeStatus < ApplicationRecord
  has_many :employees

  validates :code, presence: true
  validates :name, presence: true
end
