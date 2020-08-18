class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :igloo
  
  # validates :user, uniqueness: { scope: :igloo }
  validates :check_in, :check_out, presence: true
  validate :check_out_after_check_in
end
