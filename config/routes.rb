Rails.application.routes.draw do
  get 'facades/index'

  get "/", to: "facades#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
