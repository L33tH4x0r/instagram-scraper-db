class Post < ApplicationRecord
  belongs_to :national_park
  belongs_to :user

  has_many :likes
end
