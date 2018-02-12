Rails.application.routes.draw do
  root 'pages#index'
  post '/rand_phrase', to: 'pages#rand_phrase', as: 'rand_phrase'
  post '/clear_phrases', to: 'pages#clear_phrases', as: 'clear_phrases'
end
