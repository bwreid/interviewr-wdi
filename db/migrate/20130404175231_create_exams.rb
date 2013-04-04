class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.boolean :fee
      t.integer :pass_rate
      t.integer :creator_id

      t.timestamps
    end
  end
end
