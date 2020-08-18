class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :igloo
  validates :check_in, :check_out, presence: true
  validate :check_out_after_check_in
end
