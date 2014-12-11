class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |table|
      table.string :name, null: false

      table.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
