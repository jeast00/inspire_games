Rails.application.routes.draw do
  resources :comments
  resources :game_ideas

  resources :users do
    resources :comments
  end

  resources :users do
    resourcers :game_ideas
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
