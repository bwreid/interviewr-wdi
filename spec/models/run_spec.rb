# == Schema Information
#
# Table name: runs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  count      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  exam_id    :integer
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

  describe "#right_responses, #wrong_responses, #score" do
    it 'should return a percentage of how well the user did on the associated exam' do
      create_run_and_test

      expect(@c2c.responses.first).to_not be nil
      expect(@run.right_responses).to eq 1
      expect(@run.wrong_responses).to eq 2
      expect(@run.score).to eq 33
    end
  end

  describe '#passed?' do
    it 'should return a boolean on whether or not the run passed' do
      create_run_and_test
      expect(@run.passed?).to eq false
    end
  end

  def create_run_and_test
    FactoryGirl.create(:user)
    exam = FactoryGirl.create(:exam)
    run = FactoryGirl.create(:run)
    run.exam = exam
    run.save

    q1 = FactoryGirl.create( :question, text: 'q1' )
    q2 = FactoryGirl.create( :question, text: 'q2' )
    q3 = FactoryGirl.create( :question, text: 'q3' )
    exam.questions = [q1, q2, q3]

    # HAS ONE RIGHT ANSWER, THAT IS CHOSEN CORRECTLY
    c1a = FactoryGirl.create( :choice )
    c1a.responses << FactoryGirl.create( :response, run_id: run.id )
    c1b = FactoryGirl.create( :choice )
    c1b.responses << FactoryGirl.create( :response, run_id: run.id )
    c1c = FactoryGirl.create( :choice, correct: true )
    c1c.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    q1.choices = [c1a, c1b, c1c]

    # HAS TWO RIGHT ANSWERS, ONLY ONE IS CHOSEN (INCORRECT)
    c2a = FactoryGirl.create( :choice )
    c2a.responses << FactoryGirl.create( :response, run_id: run.id )
    c2b = FactoryGirl.create( :choice, correct: true )
    c2b.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    c2c = FactoryGirl.create( :choice, correct: true )
    c2c.responses << FactoryGirl.create( :response, run_id: run.id )
    q2.choices = [c2a, c2b, c2c]

    # HAS ONE RIGHT ANSWER, AND IS CHOSEN INCORRECTLY
    c3a = FactoryGirl.create( :choice )
    c3a.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    c3b = FactoryGirl.create( :choice )
    c3b.responses << FactoryGirl.create( :response, run_id: run.id )
    c3c = FactoryGirl.create( :choice, correct: true )
    c3c.responses << FactoryGirl.create( :response, run_id: run.id )
    q3.choices = [c3a, c3b, c3c]

    @run = run
    @c2c = c2c
  end
end
