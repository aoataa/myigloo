class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :igloo
  
  # validates :user, uniqueness: { scope: :igloo }
<<<<<<< HEAD
  validates :check_in, :check_out, presence: true
=======
  validates :check_in, presence: true
  validates :check_out, presence: true
>>>>>>> master
end

