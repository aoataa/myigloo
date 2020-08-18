class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :igloo
  
  # validates :user, uniqueness: { scope: :igloo }
  validates :check_in, :check_out, presence: true
end
