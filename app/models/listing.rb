class Listing < ApplicationRecord
  belongs_to :user 
  belongs_to :armyfaction
  belongs_to :paint
  belongs_to :condition
  has_one_attached :picture

  #Validating to make it so they must be entered when in a form
  validates :title, presence: true   
  validates :description, presence: true   
  validates :price, presence: true   

  #used for data santization for listing 
  before_save :remove_whitespace

  private

  #removes all white spaces from title and description input
  def remove_whitespace
    self.title = self.title.strip
    self.description = self.description.strip
  end
end
