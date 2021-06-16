class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :cases
  has_many :comments   

  with_options presence: true do
    validates :nickname,:last_name,:first_name,:position
  end 
end  
