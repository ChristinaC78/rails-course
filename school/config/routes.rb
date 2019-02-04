Rails.application.routes.draw do
  get '/courses/new' => 'courses#new'
  post '/courses' => 'courses#create'
  get '/courses' => 'courses#index'
  get '/courses/:id' => 'courses#edit'
  post '/courses/:id' => 'courses#update'
  get '/courses/delete' => 'courses#delete'
  get '/courses/show' => 'courses#show'
  
  
  get '/students/new' => 'students#new'
  post '/students' => 'students#create'
  get '/students' => 'students#index'
  
 # get '/' => 'courses#index'
  root 'courses#index'
end
