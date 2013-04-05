class HomeController < ApplicationController
  def index
    @exams = Exam.all
    @questions = Question.all
    @choices = Choice.all
    @tags = Tag.all

  end
end