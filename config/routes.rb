Rails.application.routes.draw do
  scope '/api' do
    scope '/national_park' do
      get '/' => 'api_national_park#index'
      post '/create' => 'api_national_park#create'
    end
    scope "/poster" do
      post '/create' => 'api_poster#create'
    end
    scope "/liker" do
      post '/create' => 'api_liker#create'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
