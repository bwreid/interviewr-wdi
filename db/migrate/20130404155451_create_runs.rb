class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :user_id
      t.integer :test_id
      t.integer :count
      t.timestamps
    end
  end
end
