Interviewr::Application.routes.draw do

  root :to => 'home#index'

  get '/search' => 'home#search'

 root :to => 'home#index'
  resources :exams do
    collection do
      get 'filter/', :action => :filter, :as => :filter
    end

    member do
      post "submit"
      post "purchase"
    end
  end


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users


  resources :questions do
    collection do
      get 'filter/', :action => :filter, :as => :filter
    end
  end

  resources :users do
    member do
      get 'scores'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
