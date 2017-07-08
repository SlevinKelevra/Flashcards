Rails.application.routes.draw do
  resources :flashcards

  root 'flashcards#index'
end
