class RenameColumnCreatorIdToUserIdInExamsTable < ActiveRecord::Migration
  def change
    rename_column :exams, :creator_id, :user_id
  end
end
