class Employee < ApplicationRecord
  belongs_to :job
  belongs_to :org
  validates :first_name, presence: true
  validates :last_name, presence: true
  def full_name
    "#{first_name} #{last_name}".titleize
  end
end
