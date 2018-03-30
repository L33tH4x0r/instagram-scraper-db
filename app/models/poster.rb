class Poster < ApplicationRecord
  has_many :posts
  has_many :followers
end
