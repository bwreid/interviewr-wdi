class ExamsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.create(params[:exam])
    binding.pry
  end

  def edit
  end

  def update
  end

  def destroy
  end
end