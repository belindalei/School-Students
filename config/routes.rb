Rails.application.routes.draw do


## School Routes 
  get '/schools', to: "schools#index", as: "schools"
  get '/schools/:id', to: "schools#show", as: "school"
  get '/schools/:id/search', to: "schools#search", as: "search_school"

## Student Routes 

#Still confused on the ordering
#why no index action is needed here?

  get '/students', to: "students#index", as: "students"

  get '/students/new', to: "students#new", as: "new_student"

  # get '/students/search', to: "students#search", as: "search_student"

  get '/students/:id', to: "students#show", as: "student"

  get '/students/:id/edit', to: "students#edit", as: "edit_student"

  post '/students', to: "students#create"

  patch '/students/:id', to: "students#update"

  delete '/students/:id', to: "students#destroy"






end
