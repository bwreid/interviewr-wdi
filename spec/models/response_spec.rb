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
  describe '.create' do
    it 'creates a new Response item' do
      response = Response.create
      expect(response.id).to_not be nil
    end
  end
end
