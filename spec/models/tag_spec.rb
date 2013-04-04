# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Tag do
  describe ".create" do
    it "should have an id and name" do
      exam = FactoryGirl.create(:exam)
      tag = FactoryGirl.create(:tag)
      exam.tags << tag
      expect(tag.exams.first).to eq exam
    end
  end
end
