Rails.application.routes.draw do

  resources :flashcards

  root 'home#index'
end
