Interviewr::Application.routes.draw do
  root :to => 'home#index'
  resources :exams do
    get 'filter/'

end

resources :questions do
  collection do
    get 'filter/', :action => :filter, :as => :filter
  end
  collection do
    get 'search'
  end
end