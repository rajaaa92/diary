Diary::Application.routes.draw do

  root :to => 'days#index'

  resources :days

end
