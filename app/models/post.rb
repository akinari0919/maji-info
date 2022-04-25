class Post < ApplicationRecord
  validates :url, presence: true, uniqueness: true

  scope :random, -> { offset(rand(Post.count)).first }
end
