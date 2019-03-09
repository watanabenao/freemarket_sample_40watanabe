class RemovePostalCodeFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :postal_code, :string
    remove_column :profiles, :prefecture, :integer
    remove_column :profiles, :city, :string
    remove_column :profiles, :address, :string
    remove_column :profiles, :building, :string
    remove_column :profiles, :sub_phone, :string
  end
end
