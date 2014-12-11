class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  # def checkouts
  #   #goes to checkouts table and retrieves all records with
  #   #this book's id as it's book_id
  # end
end
