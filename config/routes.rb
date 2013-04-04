Interviewr::Application.routes.draw do
  root :to => 'home#index'
  resources :exams do
    member do
      post "submit"
    end
  end
end
