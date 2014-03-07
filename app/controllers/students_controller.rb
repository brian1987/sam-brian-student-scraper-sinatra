# StudentsController inherits from ApplicationController
# so any settings defined there will apply to this controller.
class StudentsController < ApplicationController
  # GET '/'
  get '/' do
    # Homepage action to display the student index.
    # Load all the students into an instance variable.
    # We use the ::all method on the Student class, provided by Sequel

    # "not an error"
    @students = Student.all
    erb :'students/index' # render the index.erb within app/views/students
  end

  # Build the rest of the routes here.

  get '/students/new' do 
    erb :"students/new"
  end

  post '/students' do 
    @student = Student.create(params[:student])
    redirect to '/'
  end 

  get '/students/:slug' do 
    @student = Student.find_by(:slug => params[:slug])
    erb :"students/show"
  end 

  get '/students/:slug/edit' do 
    @student = Student.find_by(:slug => params[:slug])
    erb :"students/edit"
  end 

  post '/students/:slug' do
    @student = Student.find_by(:slug => params[:slug])
    
    @student.update(params[:student])
    redirect to '/'
  end 

  # GET '/students/avi-flombaum'
  # GET '/students/avi-flombaum/edit'
  # POST '/students/avi-flombaum'
end
