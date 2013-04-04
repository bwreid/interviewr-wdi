# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  answer      :boolean
#  user_id     :integer
#  question_id :integer
#  choice_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Response do
  let(:response) {Response.create(answer: true)}
  describe '.create' do
    it 'creates a new Response item' do
      expect(response.id).to_not be nil
    end
  end
  describe '#choice' do
    it 'has a choice' do
      choice = FactoryGirl.create(:choice)
      choice.responses << response
      expect(response.choice.id).to eq choice.id
    end
  end
  describe '#run' do
    it 'has a run' do
      run = FactoryGirl.create(:run)
      run.responses << response
      expect(response.run.id).to eq run.id
    end
  end
  describe '#question' do
    it 'has a question' do
      question = FactoryGirl.create(:question)
      question.responses << response
      expect(response.question.id).to eq question.id
    end
  end
end
