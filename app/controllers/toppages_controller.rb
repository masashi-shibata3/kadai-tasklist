class ToppagesController < ApplicationController
  def index
     if logged_in?
      @task = current_user.tasklists.build  
      @tasks = current_user.tasklists.order(id: :desc).page(params[:page])
     end
  end
end
