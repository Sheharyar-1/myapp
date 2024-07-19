Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
   resources :comment
  end
  #    member do
  #      get "preview"
  #    end
  #  end

  # resources :posts, as: "images"
  # resources :posts, path_names: { new: "make", edit: "change" }

  # scope "admin" do
  #  resources :photos, as: "admin_posts"
  # end

  # resources :posts
  # draw(:posts)

 # resources :posts, except: [ :create, :index ] do
 #   resources :comment do
 #     resources :likes, only: [ :create, :destroy ]
 #     resources :replies do
 #       resources :likes, only: [ :create, :destroy ]
  #    end
  #  end
  #end



  # scope module: "admin" do
  #   resources :posts
  # end

  #  namespace :admin do
  #   resources :posts
  #  end
end
