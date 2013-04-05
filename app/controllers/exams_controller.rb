class ExamsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @exam = Exam.new
    @exam.questions.build
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end