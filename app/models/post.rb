class Post < ApplicationRecord
  validates :body, presence: true

  scope :random, -> { offset(rand(Post.count)).first }
end
