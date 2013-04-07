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
  attr_accessible :question_id, :user_id, :run_id, :choice_id, :answer, :default=>false

  belongs_to :run
  belongs_to :question
  belongs_to :choice
end
