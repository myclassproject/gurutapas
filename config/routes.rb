Gurutapas::Application.routes.draw do
  resources :plans

  resources :purchases

  resources :events
  resources :bookevents
  resources :bookworms
  resources :bookpdfs
  resources :bookfile
  resources :authors

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  resources :sessions, only: [:create, :destroy, :new]
  resources :books

  match '/profileinfo',  to: 'authors#profileinfo'
  match '/infoerror',  to: 'authors#inputerror'
  match '/bookadded',  to: 'books#anothernew'
  match '/buy',  to: 'books#buy'
  match '/signup',  to: 'authors#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  get "attachments/show"

  resources :authors do
    resources :bookworms
    resources :bookpdfs
    resources :books
  end

  resources :books do
    resources :purchases
  end

  resources :books do
    member do
      get 'buy'
    end
  end

  resources :authors do
    member do
      get 'profileinfo'
    end
  end

  resources :authors do
    member do
      get 'blog'
    end
  end

  resources :authors do
    member do
      get 'interact'
    end
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
