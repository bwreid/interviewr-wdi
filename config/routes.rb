Interviewr::Application.routes.draw do
  root :to => 'home#index'
  resources :exams
end
