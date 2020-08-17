class Igloo < ApplicationRecord
  belongs_to :user
  has_many_attached :photo
  validates :name, :description, :address, presence: true
end
