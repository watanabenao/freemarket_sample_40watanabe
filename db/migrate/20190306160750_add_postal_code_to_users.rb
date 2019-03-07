class AddPostalCodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :building, :string
  end
end
  