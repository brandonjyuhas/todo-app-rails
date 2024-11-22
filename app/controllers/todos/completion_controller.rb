class Todos::CompletionController < ApplicationController
  def create
    @todo = Todo.find(params[:todo_id])
    @todo.update(completed_at: Time.current)
  end
end
