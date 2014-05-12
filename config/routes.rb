Musicbox::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :musics
  resources :users

  root  'static_pages#index'
   
  match '/signin',               to:  'sessions#login' ,          via: 'get'
  match '/signout',              to:  'sessions#destroy',         via: 'delete'
  match '/signup',               to:  'users#register' ,          via: 'get'
  match '/contactus',            to:  'static_pages#contactus',   via: 'get'
  #match '/select',               to:  'static_pages#select',      via: 'get'
  #match '/show',                 to:  'static_pages#show',        via: 'get'
  # match 'search',               to:  'static_pages#search',      via: 'get'
  #match '/stats/:id',            to:  'static_pages#stats',       via: 'get'
  
  
  get 'select' => 'musics#select'
  #get 'login' => 'finances#login'
  #get 'signup' => 'finances#signup'
  get 'show' => 'music#show'
  get 'search' => 'static_pages#search'
  get 'stats/:id' => 'musics#stats'

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
