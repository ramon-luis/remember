Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  resources :flashcards

  # confirmation page to delete flashcard
  get '/flashcards/:id/delete' => 'flashcards#delete'

end
