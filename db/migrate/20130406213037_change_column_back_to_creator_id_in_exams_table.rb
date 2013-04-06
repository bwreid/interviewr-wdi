class ChangeColumnBackToCreatorIdInExamsTable < ActiveRecord::Migration
  def change
    rename_column :exams, :user_id, :creator_id
  end
end
