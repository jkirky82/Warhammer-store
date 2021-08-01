class Listing < ApplicationRecord
  belongs_to :user 
  belongs_to :army_faction
end
