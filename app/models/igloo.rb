class Igloo < ApplicationRecord
  belongs_to :users
  has_many_attached :photo
end
