Rails.application.routes.draw do
  get '/' => 'dojos#index'

  post 'farm' => 'dojos#farm'

  post 'cave' => 'dojos#cave'

  post 'house' => 'dojos#house'

  post 'casino' => 'dojos#casino'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
