class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.text :profile
      t.string :avater
      t.string :postal_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.string :sub_phone
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
