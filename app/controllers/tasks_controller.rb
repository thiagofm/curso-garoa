class TasksController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :js

  def index
    ap params[:tag]
    @task = Task.new
    @tasks = current_user.tasks
    @user_tags = Task.where(:user_id => current_user.id)
                    .map {|task| task.tags }
                    .flatten
                    .map {|tag| tag.name }
                    .uniq

    if params.include? :tag
      task_ids = @tasks.map(&:id)
      task_ids_of_tags = Tag.where("task_id IN (?) AND name = ?", task_ids, params[:tag] )
                .map(&:task_id)
      @tasks = Task.find(task_ids_of_tags)
    end
    
    respond_with @task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.user = current_user
    @task.save
    respond_with @task
  end
end
