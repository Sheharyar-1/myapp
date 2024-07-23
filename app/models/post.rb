class Post < ApplicationRecord
  has_many :comment

 after_save -> {puts "save!"}
 after_create -> {puts "create!"}


 # before_save :check
  #after_commit :dfd

 # before_create do 
 #   self.title = "yoyo"
 # end

 # after_save ->(post) {post.page_count = 45}



 #  after_initialize do |post|
 #    puts "why bro whyyy"
 #  end

 # after_find do |post|
  #  puts "No choice"
  #end


  after_destroy Del



  #validates :title, presence: true, uniqueness: true, on: :create

  #validates :body, length: { minimum: 10 }, allow_blank: true
  #validates :title, inclusion: { in: %w(small medium large),
  #message: "%{value} is not a valid size" }
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
 #        raise ActiveRecord::Rollback 

  private
    def check
      if self.body.blank?
        throw :abort
      end
      puts "success"
    
    end

    def dfd
   
      puts "updated"
      
    end
end






  
