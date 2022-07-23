Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    #単数形にすると、/:idがURLに含まれなくなります。
    resource :favorites, only: [:create, :destroy]

    resources :post_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]
end


