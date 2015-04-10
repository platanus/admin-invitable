Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount AdminInvitable::Engine => "/admin_invitable"

  get 'home/index'
  post 'home/invite'

  root to: "home#index"
end
