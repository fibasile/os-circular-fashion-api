Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  post 'auth/request', to:'authorization#get_authorization'
  get 'auth/me', to: 'authorization#me'
  resources :projects do
    resources :photos
    resources :attachments
    resources :comments
  end
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
