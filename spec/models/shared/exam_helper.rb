require 'spec_helper'

module ExamHelper
  def create_exam
    user = FactoryGirl.create(:user)
    exam = FactoryGirl.create(:exam)
    run = FactoryGirl.create(:run)
    run.exam = exam

    #RUN NUMBER ONE -- 33% score -- DID NOT PASS

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
    exam
  end

  def create_exams
    user = FactoryGirl.create(:user)
    exam = FactoryGirl.create(:exam)
    run = FactoryGirl.create(:run)
    run.exam = exam

    #RUN NUMBER ONE -- 33% score -- DID NOT PASS

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

    # HAS TWO RIGHT ANSWERS, BOTH CHOSEN CORRECTLY
    c2a = FactoryGirl.create( :choice )
    c2a.responses << FactoryGirl.create( :response, run_id: run.id )
    c2b = FactoryGirl.create( :choice, correct: true )
    c2b.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    c2c = FactoryGirl.create( :choice, correct: true )
    c2c.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    q2.choices = [c2a, c2b, c2c]

    # HAS ONE RIGHT ANSWER, AND IS CHOSEN CORRECTLY
    c3a = FactoryGirl.create( :choice )
    c3a.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    c3b = FactoryGirl.create( :choice )
    c3b.responses << FactoryGirl.create( :response, run_id: run.id )
    c3c = FactoryGirl.create( :choice, correct: true )
    c3c.responses << FactoryGirl.create( :response, run_id: run.id, answer: true )
    run.save
    exam
  end


end