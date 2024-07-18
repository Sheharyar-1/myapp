class Post < ApplicationRecord
  has_many :comment

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  # validates :title, not: nil
end
