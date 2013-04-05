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
  attr_accessible :exam_id, :text, :choices_attributes
  has_many :choices
  has_many :responses
  belongs_to :exam
  accepts_nested_attributes_for :choices, :reject_if => lambda { |a| a[:text].blank? }, :allow_destroy => true
end
