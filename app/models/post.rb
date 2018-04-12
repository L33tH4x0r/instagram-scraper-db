class Post < ApplicationRecord
  belongs_to :national_park
  belongs_to :poster, class_name: "User"

  has_many :likes
end
