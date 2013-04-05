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

class Exam < ActiveRecord::Base
  attr_accessible :creator_id, :fee, :name, :pass_rate, :cost
  has_many :runs
  has_and_belongs_to_many :tags
  has_many :questions

  # calculates the percentage of the number of passing runs for an exam.
  def passing
    count = 0
    self.runs.each {|run| count += 1 if run.score >= self.pass_rate} if self.runs.present?
    (count.to_f / self.runs.count) * 100
  end

  def make_responses
    choices = self.questions.map{|x| x.choices}.flatten
    choices.each do |x|
      Response.create(question_id:x.question.id, choice_id:x.id)
    end
  end
end
