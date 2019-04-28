class Puppy < ApplicationRecord
  has_one_attached :uploaded_image
  has_many :orders
  belongs_to :user
end
