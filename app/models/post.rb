class Post < ApplicationRecord
  validates :body, presence: true, uniqueness: true

  scope :random_from_unposted, -> { where(submitted: false).order("RANDOM()").first }
  scope :unsubmitted, -> { where(submitted: false) }

  def submitted!
    self.update(submitted: true)
  end
end
