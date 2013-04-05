# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  answer      :boolean
#  question_id :integer
#  choice_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  run_id      :integer
#

class Response < ActiveRecord::Base
  attr_accessible :answer, :question_id, :run_id
  belongs_to :run
  belongs_to :question
  belongs_to :choice
end
