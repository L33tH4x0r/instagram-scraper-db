Rails.application.routes.draw do
  
  post 'liker/upsert'

  get 'liker/get'

  get 'liker/index'

  post 'follower/upsert'

  get 'follower/get'

  get 'follower/index'

  post 'poster/upsert'

  get 'poster/get'

  get 'poster/index'

  post 'post/upsert'

  get 'post/get'

  get 'post/index'

  get 'national_park/index'

  post 'national_park/upsert'

  get 'national_park/get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
