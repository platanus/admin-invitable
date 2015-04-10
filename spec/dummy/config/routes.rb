Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount AdminInvitable::Engine => "/admin_invitable"

  get 'home/index'

  root to: "home#index"
end
