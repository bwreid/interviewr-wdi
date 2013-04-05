# == Schema Information
#
# Table name: runs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  exam_id    :integer
#

class Run < ActiveRecord::Base
  attr_accessible :count, :test_id, :user_id
  belongs_to :user
  belongs_to :exam
  has_many :responses

  def right_responses
    right_responses = 0
    self.exam.questions.each do |question|
      boolean_check = []
      question.choices.each do |choice|
        if choice.correct == choice.responses.where( run_id: self.id ).first.answer
          boolean_check << true
        else
          boolean_check << false
        end
      end
      right_responses += 1 if boolean_check.reduce(:&) == true
    end
    right_responses
  end

  def wrong_responses
    wrong_responses = 0
    self.exam.questions.each do |question|
      boolean_check = []
      question.choices.each do |choice|
        if choice.correct == choice.responses.where( run_id: self.id ).first.answer
          boolean_check << true
        else
          boolean_check << false
        end
      end
      wrong_responses += 1 if boolean_check.reduce(:&) == false
    end
    wrong_responses
  end

  def score
    ((self.right_responses.to_f / self.exam.questions.length.to_f)*100).to_i
  end

  def passed?
    self.score >= self.exam.pass_rate ? true : false
  end
end
