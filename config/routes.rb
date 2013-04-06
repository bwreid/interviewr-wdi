Interviewr::Application.routes.draw do
 root :to => 'home#index'
  resources :exams do
    member do
      post "submit"
      post "purchase"
      get "analytic"
      get "scores"
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
