Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: :new_user
  post 'signup', to: 'users#create', as: :save_new_user

  get 'signin', to: 'sessions#new', as: :new_session
  post 'signin', to: 'sessions#create', as: :save_new_session

  delete 'signout', to: 'sessions#destroy', as: :signout

  get 'users/:user_id', to: 'users#show', as: :user
  get 'users/:user_id/edit', to: 'users#edit', as: :edit_user
  patch 'users/:user_id', to: 'users#update', as: :save_edit_user

  get 'users/:user_id/accounts/:account_id', to: 'accounts#show', as: :account

  get 'users/:user_id/accounts/:account_id/transactions/new', to: 'transactions#new', as: :new_transaction
  post 'users/:user_id/accounts/:account_id/transactions', to: 'transactions#create', as: :save_new_transaction

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
