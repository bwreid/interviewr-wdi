Interviewr::Application.routes.draw do
  root :to => 'home#index'

  get '/search' => 'home#search'


  resources :exams do
    collection do
      get 'filter/', :action => :filter, :as => :filter
    end

    member do
      post "submit"
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :exams
  resources :users

  resources :questions do
    collection do
      get 'filter/', :action => :filter, :as => :filter
    end
  end

end
