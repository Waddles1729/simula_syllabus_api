Rails.application.routes.draw do
  namespace :v1, defaults: {format: :json} do
    resources :universities, only: [:index, :show, :create, :update, :destroy]
    resources :universities do
      resources :syllabuses, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
