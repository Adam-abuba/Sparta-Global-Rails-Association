class Developer < ApplicationRecord
  has_many :developers
  has_many :users
  validates :name, presence: true
  validates :employees, numericality: { only_integer: true }
end
