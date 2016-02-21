Rails.application.routes.draw do
  resources :cars
  root to: "static#index"
end
