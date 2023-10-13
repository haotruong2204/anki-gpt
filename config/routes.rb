Rails.application.routes.draw do
  require 'sidekiq/web'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  mount Sidekiq::Web => "/sidekiq"

  root "client/dashboard#index"

  scope module: "client", path: "", as: "" do
    devise_for :accounts, path: "", path_names: { sign_in: "login", sign_out: "logout" }
  end

  namespace :admin do
    root "dashboard#index"
   
    devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" }
  end
end
