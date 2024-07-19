class Post < ApplicationRecord
  has_many :comment

  #validates :title, presence: true, uniqueness: true, on: :create

  validates :body, length: { minimum: 10 }, allow_blank: true
  validates :title, inclusion: { in: %w(small medium large),
  message: "%{value} is not a valid size" }
  #validate :title_not_admin

 # validates :title, confirmation: true
 # validates :title_confirmation, presence: true
  #validates :page_count, comparison: {greater_than: 20} 
#  #validates :title, exclusion: {in: %w(dede)} 
 # def title_not_admin
 #   if title=="admin"
 # end 


  #validates :page_count, numericality: true
 # validates :page_count, absence: true
  #validate do |post|
  # errors.add :title, :too_plain, message: "is not cool enough"
  #end

  # validates :title, not: nil

  #validates :s
end
