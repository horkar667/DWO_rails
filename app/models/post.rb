class Post < ApplicationRecord
  validates :body, presence: true
  validates :faculty, presence: true
  validates :costom, presence: true
end
