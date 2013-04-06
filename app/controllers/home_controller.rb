class HomeController < ApplicationController
  def index
    @exams = Exam.all
    @questions = Question.all
    @choices = Choice.all
    @tags = Tag.all
  end

  def search
    query = params[:query]
    @exams = Exam.where("name @@ :q", :q => query)
    @questions = Question.where("text @@ :q", :q => query)
    @choices = Choice.where("text @@ :q", :q => query)
    @tags = Tag.where("name @@ :q", :q => query)
    exams_with_tag = @tags.map{|tag| tag.exams }.flatten.uniq
    @exams = (@exams + exams_with_tag).uniq
  end
end

