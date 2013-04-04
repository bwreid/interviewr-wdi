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

require 'spec_helper'

describe Choice do
  pending "add some examples to (or delete) #{__FILE__}"
end
