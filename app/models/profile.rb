class Profile < ApplicationRecord
  belongs_to :user 
  validates :street_address, presence: true
end
