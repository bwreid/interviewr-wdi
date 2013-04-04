# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  exam_id    :integer
#

class Question < ActiveRecord::Base
  attr_accessible :test_id, :text
  has_many :choices
  has_many :responses
  belongs_to :exam
end
