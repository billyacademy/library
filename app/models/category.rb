class Category < ActiveRecord::Base
  has_many :books, through: :categorizations
  has_many :categorizations
end
