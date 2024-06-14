Rails.application.routes.draw do
  devise_for :users

  resources :music_records do
    post 'order', to: 'music_records#order', on: :member
    post 'rent', to: 'music_records#rent', on: :member
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
