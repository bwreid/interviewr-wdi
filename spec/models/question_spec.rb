# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :text
#  test_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Question do
  describe ".create" do
    it 'has an id' do
      question = FactoryGirl.create(:question)
      expect(question.id).to_not be nil
    end
    it 'has many choices' do
      question = FactoryGirl.create(:question)
      question.choices << FactoryGirl.create(:choice_a) << FactoryGirl.create(:choice_b) << FactoryGirl.create(:choice_c) << FactoryGirl.create(:choice_d)
      expect(question.choices.count).to eq 4
    end
    it 'has many responses' do
      question = FactoryGirl.create(:question)
      question.responses << FactoryGirl.create(:response_a) << FactoryGirl.create(:response_b) << FactoryGirl.create(:response_c) << FactoryGirl.create(:response_d)
    end
    it 'has a correct choice' do
      question = FactoryGirl.create(:question)
      question.choices << FactoryGirl.create(:choice_a) << FactoryGirl.create(:choice_b) << FactoryGirl.create(:choice_c) << FactoryGirl.create(:choice_d)
      expect(question.choices.where(:correct => true)).to_not eq 0
    end
    it 'belongs to exam' do
      question = FactoryGirl.create(:question)
      exam = FactoryGirl.create(:exam)
      exam.questions << question
    end
  end
end

