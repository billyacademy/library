class PopulateCategorizations < ActiveRecord::Migration
  def change
    Book.all.each do |book|
        Categorization.create(
          book: book
        )
    end
  end
end
