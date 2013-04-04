class MakeDefaultForRunCount < ActiveRecord::Migration
  def change
    change_column :runs, :count, :integer, :default => 0
  end
end
