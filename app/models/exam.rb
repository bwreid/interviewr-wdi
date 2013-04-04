class Exam < ActiveRecord::Base
  attr_accessible :creator_id, :fee, :name, :pass_rate
end
