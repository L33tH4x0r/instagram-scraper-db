class Post < ApplicationRecord
  has_and_belongs_to_many :likers
  belongs_to :poster
  belongs_to :national_park
  belongs_to :follower
end
