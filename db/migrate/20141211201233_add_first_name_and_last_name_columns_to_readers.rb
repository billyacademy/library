class AddFirstNameAndLastNameColumnsToReaders < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.all.each do |reader|
      names = reader.full_name.split(" ")

      reader.first_name = names[0]
      reader.last_name = names[-1]
      reader.save
    end
      change_column_null :readers, :first_name, false
      change_column_null :readers, :last_name, false
  end
end
