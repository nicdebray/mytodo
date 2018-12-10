class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :description)
  end
end
