# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  fee        :boolean
#  pass_rate  :integer
#  creator_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cost       :decimal(, )      default(0.0)
#

require 'spec_helper'

describe Exam do
  describe ".create" do
    it "should have an id and stuff" do
      exam = FactoryGirl.create(:exam)
      expect(exam).to be_an_instance_of(Exam)
      expect(exam.id).to_not eq nil
      expect(exam.name).to eq "exam"
    end
  end

  describe "#tags" do
    it "should have tags" do
      exam = FactoryGirl.create(:exam)
      tag = FactoryGirl.create(:tag)
      exam.tags << tag
      expect(exam.tags.first).to eq tag
    end
  end

  describe "#runs" do
    it "should have runs" do
      exam = FactoryGirl.create(:exam)
      run = FactoryGirl.create(:run)
      run.exam = exam
      run.save
      expect(exam.runs.first).to eq run
    end
  end
end
