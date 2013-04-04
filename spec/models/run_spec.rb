# == Schema Information
#
# Table name: runs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  test_id    :integer
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Run do
  describe '.user' do
    it 'should show the user the run is associated with' do
      user = FactoryGirl.create(:user)
      run = FactoryGirl.create(:run)
      user.runs << run
      expect(run.user).to eq user
    end
  end

  describe '.exam' do
    it 'should show the exam the individual run is associated with' do
      exam = FactoryGirl.create(:exam)
      run = FactoryGirl.create(:run)
      exam.runs << run
      expect(run.exam).to eq exam
    end
  end
end
