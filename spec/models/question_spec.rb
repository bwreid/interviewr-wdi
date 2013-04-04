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



    # end
    # it 'belongs to test' do
    #   # a question belongs to a test
    # end
  end
end

