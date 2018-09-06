Rails.application.routes.draw do
  # get 'dojos' => 'dojos#index'
  # get 'dojos/new' => 'dojos#new'
  # post 'dojos' => 'dojos#create'
  # get 'dojos/:id' => 'dojos#show'
  # get 'dojos/:id/edit' => 'dojos#edit'
  # patch 'dojos:id' => 'dojos#update'
  # delete 'dojos/:id/destroy' => 'dojos#destroy'
  
  
  resources :dojos do 
    resources :students, except:[:index]
  end

  # get 'dojos/:dojo_id/students/new' => 'students#new'
  # post 'dojos/:dojo_id/students' => 'students#create'
  # delete 'dojos/:dojo_id/students/:id' => 'students#destroy'
#   POST                    /dojos/:dojo_id/students(.:format)          students#create
  #  GET    /dojos/:dojo_id/students/new(.:format)      'students#new'
#   edit_dojo_student GET   /dojos/:dojo_id/students/:id/edit(.:format) students#edit
#   dojo_student GET        /dojos/:dojo_id/students/:id(.:format)      students#show
#   PATCH                   /dojos/:dojo_id/students/:id(.:format)      students#update
#   PUT                     /dojos/:dojo_id/students/:id(.:format)      students#update
  # get 'dojos/:id/students/:id' => 'students#show'
  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end
  # get '/dojos' => 'dojos#index'

  # get '/dojos/new' => 'dojos#new'

  # post '/dojos' => 'dojos#create'

  # get '/dojos/:id/edit' => 'dojos#edit'

  # put '/dojos/:id' => 'dojos#update'

  # get  '/dojos/:id' => 'dojos#show'

  # delete '/dojos/:id' => 'dojos#destroy'


  # get '/dojos/:dojos_id/students/new' => 'students#new'

  # post '/dojos/:dojos_id/students' => 'students#create'

  # get '/dojos/:dojos_id/students/:id' => 'students#show'

  # get '/dojos/:dojos_id/students/:id/edit' => 'students#edit' 

  # put '/dojos/:dojos_id/students/:id' => 'students#update'

  # delete '/dojos/:dojos_id/students/:id' => 'students#destroy'
end
