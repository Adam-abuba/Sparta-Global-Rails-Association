class Software < ApplicationRecord
  belongs_to :developer
  belongs_to :user
  validates :cost, :numericality => { :greater_than_or_equal_to => 0 }
end
