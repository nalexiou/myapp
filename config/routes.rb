Rails.application.routes.draw do
    devise_for :owners, :controllers => { registrations: 'registrations' }
    resources :restaurants
    root 'restaurants#index'
    get '/about', to: 'restaurants#about'
end
