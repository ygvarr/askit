Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index"
  resources :questions do
    resources :answers, only: %i[create destroy]
  end
end
