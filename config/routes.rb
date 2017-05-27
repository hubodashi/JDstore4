Rails.application.routes.draw do
   devise_for :user, controllers: {
     passwords: 'users/passwords',
     registrations: 'users/registrations',
     sessions: 'users/sessions'
   }
  namespace :account do
   resources :orders
  end
  resources :cart_items
  resources :products do
    member do
     post :upvote
    end
    resources :posts
    member do
      post :add_to_cart
    end
    collection do
     get :search
    end
    member do
     post :add_to_favorite
     post :quit_favorite
    end
  end
  namespace :admin do
     resources :posts
     resources :products do
       member do
         post :move_up
         post :move_down
       end
     end
      resources :orders do
     member do
       post :cancel
       post :ship
       post :shipped
       post :return
     end
   end
  end
 resources :orders do
  member do
    post :pay_with_alipay
    post :pay_with_wechat
    post :apply_to_cancel
  end
end
 resources :carts do
   collection do
     delete :clean
      post :checkout
   end
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
