Rails.application.routes.draw do
  get 'post/index'

  get 'post/show'

  # get 'blogger_controller/index'

  # get 'blogger_controller/show'

  # get 'blogger_controller/new'

  # get 'blogger_controller/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogger
  resources :post
  resources :destination
end
