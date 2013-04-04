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

class Choice < ActiveRecord::Base
  attr_accessible :correct, :question_id, :text
  has_one :response
  belongs_to :question
end
