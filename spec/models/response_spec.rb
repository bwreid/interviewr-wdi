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
  pending "add some examples to (or delete) #{__FILE__}"
end
