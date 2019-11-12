class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to show_path(@task)
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to show_path(@task)
    else
      render :edit
    end
  end

  def destroy
    @task = Task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
