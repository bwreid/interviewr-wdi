class AddCostColumnToExams < ActiveRecord::Migration
  def change
    add_column :exams, :cost, :decimal, :default => 0.0
  end
end
