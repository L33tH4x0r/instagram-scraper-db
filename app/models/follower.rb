class Follower < ApplicationRecord
  has_many :posts
  has_and_belongs_to_many :posters
end
