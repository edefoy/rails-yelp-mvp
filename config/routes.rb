Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[edit create destroy]
end
