Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :shorten_urls, only: %i[create index] do
    get 'set_analytics', on: :member
  end

  resources :analytics, only: [:index]

  root to: 'shorten_urls#index'
end
