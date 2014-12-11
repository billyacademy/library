class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |table|
      table.string :title, null: false
      table.string :call_number, null: false
      table.string :isbn, null: false
      table.text :description
      table.integer :quantity, null: false, default: 1
    end

    add_index :books, :isbn, unique: true
    add_index :books, :call_number, unique: true
  end
end
