class Post < ApplicationRecord
  has_many :comment
  self.filter_attributes=[:title]
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
end
