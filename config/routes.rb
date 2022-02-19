Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  devise_for :users, controllers: {
                       registrations: "users/registrations",
                       passwords: "users/passwords",
                     }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
