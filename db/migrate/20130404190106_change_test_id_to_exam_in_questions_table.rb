class ChangeTestIdToExamInQuestionsTable < ActiveRecord::Migration
  def change
    remove_column :questions, :test_id
    add_column :questions, :exam_id, :integer
  end
end
