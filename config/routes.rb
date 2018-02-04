Rails.application.routes.draw do
  # ActiveAdmin.routes(self)


  namespace :v1, defaults: {format: :json} do
    resources :universities, only: [:index, :show, :create, :update, :destroy]
    resources :universities do
      resources :syllabuses, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
