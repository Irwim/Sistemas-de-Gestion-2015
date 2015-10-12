Rails.application.routes.draw do
  devise_for :usuarios
  get 'application/profile'
  get 'application/login'
  get 'application/register'
  root 'application#home'
end

