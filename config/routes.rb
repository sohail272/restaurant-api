Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: 'json' } do
    resources :restaurants, only: [:index, :show] do
    	resources :dishes, only: [:index, :show]
    end

    resources :dishes, only: [:index, :show] do
    	resources :restaurants, only: [:index, :show]
    end
  end
end
