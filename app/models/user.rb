class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile, :dependent => :destroy
  has_many :listing, :dependent => :destroy
  has_many :payments
  
  accepts_nested_attributes_for :profile

  validates :username, presence: true, length: {minimum: 3, too_short: "3 is the minimum number of caracter"}      
  validates :first_name, presence: true   
  validates :last_name, presence: true   
  
end
