class TasksController < ApplicationController
    
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        Task.create(task_params)
    end

    def show
        @task = Task.find(params[:id])
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
    end

    private
    def task_params
        params.require(:task).permit(:title, :contents)
    end
end
