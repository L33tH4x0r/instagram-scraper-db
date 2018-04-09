Rails.application.routes.draw do
  resources :liker,           only: [:show, :index]
  resources :follower,        only: [:show, :index]
  resources :poster,          only: [:show, :index]
  resources :post,            only: [:show, :index]
  resources :national_park,   only: [:show, :index]
  scope '/api' do
    scope '/national_park' do
      get '/' => 'api_national_park#index'
      post '/create' => 'api_national_park#create'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
