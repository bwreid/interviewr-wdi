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
  attr_accessible :count, :exam_id, :user_id
  belongs_to :user
  belongs_to :exam
  has_many :responses




end
