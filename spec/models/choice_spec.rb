# == Schema Information
#
# Table name: choices
#
#  id          :integer          not null, primary key
#  text        :string(255)
#  correct     :boolean
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Choice do
  describe '#question' do
    it "should belong to a question" do
      question = FactoryGirl.create(:question)
      choice = FactoryGirl.create(:choice)
      question.choices << choice
      expect(question.choices.first).to eq choice
    end
  end

  describe '#choice' do
    it "should have many responses" do
      choice = FactoryGirl.create(:choice)
      response = FactoryGirl.create(:response)
      choice.responses << response
      expect(choice.responses.first).to eq response
    end
  end
end