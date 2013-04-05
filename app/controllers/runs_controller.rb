class RunsController < ApplicationController
  def index
    @runs = Run.where(:user_id=>@auth.id)
  end
end