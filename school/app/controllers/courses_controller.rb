class CoursesController < ApplicationController
    def new 
    end
    
    def create
        course = Course.new
        course.name = params[:name]
        course.location = params[:location]
        course.description = params[:description]
        course.save
        redirect_to '/courses'
    end
    
    def index
        @courses= Course.all
    end
    
    def edit
        @course = Course.find(params[:id])
    end
    
    def update
        course = Course.find(params[:id])
        course.name = params[:name]
        course.location = params[:location]
        course.description = params[:description]
        course.save
        redirect_to '/courses'
    end
    
    def delete
        course = Course.find(params[:id])
        course.destroy
        redirect_to '/courses'
    end
    
    def show
        
    end
    
end
