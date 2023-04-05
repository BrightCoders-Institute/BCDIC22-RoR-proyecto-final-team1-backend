# frozen_string_literal: true

# Class AddColumnsToUsers for migration
class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :identification, :string

    add_index :users, :phone_number, unique: true
  end
end
