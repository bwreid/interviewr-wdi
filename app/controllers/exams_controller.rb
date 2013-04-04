class ExamsController < ApplicationController
  def show
    @exam = Exam.find(params[:id])
    responses = @exam.questions.first.responses.select{|x| x.run_id == nil}
    if responses.length == 0
      @exam.make_responses
    end
    @responses = @exam.questions.map{|x| x.responses}.flatten.select{|y| y.run_id == nil}
  end

  def submit
    binding.pry
    exam = Exam.find(params[:id])
    exam.questions.each do |x|
      params["#{x.id}"].each do |y|
        r = Response.find(y)
        r.answer = true
        r.save
      end
    end
    run = Run.create(exam_id:exam.id, user_id:User.last.id)
    run.responses << exam.questions.map{|x| x.responses}.flatten.select{|y| y.run_id == nil}
    redirect_to(root_path)
  end

end
