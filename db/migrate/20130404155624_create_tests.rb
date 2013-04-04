class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.boolean :fee, default: false
      t.integer :pass_rate
      t.string :code
      t.integer :creator_id

      t.timestamps
    end
  end
end
