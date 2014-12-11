class CreateCheckouts < ActiveRecord::Migration
  def change
    date_due = Time.now + (60 * 60 * 24 * 14)

    create_table :checkouts do |table|
      table.integer :book_id, null: false
      table.datetime :date_due, null: false, default: date_due
      table.string :reader_name, null: false
      table.datetime :date_returned

      table.timestamps

    end
  end
end
