class ChangeRunTableForExams < ActiveRecord::Migration
  def change
    remove_column :runs, :test_id
    add_column :runs, :exam_id, :integer
  end
end
