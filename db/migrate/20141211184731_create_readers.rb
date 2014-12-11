class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |table|
      table.string :full_name, null: false
      table.string :email, null: false
      table.string :phone_number, null: false

      table.timestamps
    end
  end
end
