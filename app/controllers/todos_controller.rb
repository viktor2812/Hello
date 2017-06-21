class TodosController < ApplicationController

	def new 

		@todo = Todo.new

	end

	def create 

		@todo = Todo.new(todo_params)
		if @todo.save
            flash[:notice]="Se creo con exito"
		    redirect_to todo_path(@todo)
		else 
		   render 'new'
		end   

	end 

	def show
        @todo = Todo.find(params[:id])
	end 	

	private 

	   def todo_params

	   	  params.require(:todo).permit(:name, :phone)

	   end 	

end 