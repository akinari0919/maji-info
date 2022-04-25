class Post < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  validates :body, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true
  validates :contributor, presence: true

  scope :random, -> { offset(rand(Post.count)).first }
end
