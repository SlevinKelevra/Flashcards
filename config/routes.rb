Rails.application.routes.draw do
  resources :home
  resources :flashcards

  root 'home#index'
end
