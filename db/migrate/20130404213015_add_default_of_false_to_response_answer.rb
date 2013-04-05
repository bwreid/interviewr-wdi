class AddDefaultOfFalseToResponseAnswer < ActiveRecord::Migration
  def change
    remove_column :responses, :answer
    add_column :responses, :answer, :boolean, default: false
  end
end
