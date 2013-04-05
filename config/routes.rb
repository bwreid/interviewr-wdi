Interviewr::Application.routes.draw do
  root :to => 'home#index'
  resources :exams do
    member do
      post "submit"
    end
  end
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :exams
  resources :users

end
