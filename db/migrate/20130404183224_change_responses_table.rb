class ChangeResponsesTable < ActiveRecord::Migration
  def change
    remove_column :responses, :user_id
    add_column :responses, :run_id, :integer
  end
end
