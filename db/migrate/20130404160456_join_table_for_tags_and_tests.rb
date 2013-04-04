class JoinTableForTagsAndTests < ActiveRecord::Migration
  def change
    create_table :tags_tests, id: false do |j|
      j.integer :tag_id
      j.integer :test_id
    end
  end
end
