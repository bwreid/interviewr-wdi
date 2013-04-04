class ExamsTagsTable < ActiveRecord::Migration
  def change
    create_table :exams_tags, id: false do |j|
      j.integer :tag_id
      j.integer :exam_id
    end
  end
end
