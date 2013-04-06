class HomeController < ApplicationController
  def index
    @exams = Exam.all
  end

  def search
    query = params[:query]
    @exams = Exam.where("name @@ :q", :q => query)
    @questions = Question.where("text @@ :q", :q => query)
    @questions = @questions.map{|x| x.exam}.flatten
    @choices = Choice.where("text @@ :q", :q => query)
    @choices = @choices.map{|x| x.question.exam}.flatten
    @tags = Tag.where("name @@ :q", :q => query)
    @tags = @tags.map{|x| x.exams}.flatten
    @exams = (@exams + @tags + @questions + @choices).uniq
    return @exams
  end
end

