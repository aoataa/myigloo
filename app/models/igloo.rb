class Igloo < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :name, :description, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :photos, presence: true
  validates :price, presence: true
end
