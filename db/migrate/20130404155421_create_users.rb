class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.boolean :is_house
      t.string :address
      t.string :phone
      t.string :occupation
      t.decimal :balance
      t.string :image
      t.string :password_digest
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
