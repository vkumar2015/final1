Final1::Application.routes.draw do

  # Specify a custom home page
  get "/" => "sessions#index"
  # get "/" => "treatments#index"

  # Sign-In and Sign-Out
  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'


  # Resource: Ureviewshosps
  # --- Create
  #get "/ureviewshosps/new" => 'ureviewshosps#new'
  #post "/ureviewshosps" => 'ureviewshosps#create'
  # --- Read
  #get "/ureviewshosps" => 'ureviewshosps#index'
  #get "/ureviewshosps/:id" => 'ureviewshosps#show'
  # -- Update
  #get "/ureviewshosps/:id/edit" => 'ureviewshosps#edit'
  #patch "/ureviewshosps/:id" => 'ureviewshosps#update'
  # --- Delete
  #delete "/ureviewshosps/:id" => 'ureviewshosps#destroy'

  # Resource: Ureviewsdocs
  # --- Create
  #get "/ureviewsdocs/new" => 'ureviewsdocs#new'
  #post "/ureviewsdocs" => 'ureviewsdocs#create'
  # --- Read
  #get "/ureviewsdocs" => 'ureviewsdocs#index'
  #get "/ureviewsdocs/:id" => 'ureviewsdocs#show'
  # -- Update
  #get "/ureviewsdocs/:id/edit" => 'ureviewsdocs#edit'
  #patch "/ureviewsdocs/:id" => 'ureviewsdocs#update'
  # --- Delete
  #delete "/ureviewsdocs/:id" => 'ureviewsdocs#destroy'

  # Resource: Users
  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'
  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'
  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'
  # --- Delete
  delete "/users/:id" => 'users#destroy'

  # Resource: Treatments
  # --- Create
  get "/treatments/new" => 'treatments#new'
  post "/treatments" => 'treatments#create'
  # --- Read
  get "/treatments" => 'treatments#index'
  get "/treatments/:id" => 'treatments#show'
  # -- Update
  get "/treatments/:id/edit" => 'treatments#edit'
  patch "/treatments/:id" => 'treatments#update'
  # --- Delete
  delete "/treatments/:id" => 'treatments#destroy'

  # Resource: Hospitals
  # --- Create
  get "/hospitals/new" => 'hospitals#new'
  post "/hospitals" => 'hospitals#create'
  # --- Read
  get "/hospitals" => 'hospitals#index'
  get "/hospitals/:id" => 'hospitals#show'
  # -- Update
  get "/hospitals/:id/edit" => 'hospitals#edit'
  patch "/hospitals/:id" => 'hospitals#update'
  # --- Delete
  delete "/hospitals/:id" => 'hospitals#destroy'

  # Resource: Doctors
  # --- Create
  get "/doctors/new" => 'doctors#new'
  post "/doctors" => 'doctors#create'
  # --- Read
  get "/doctors" => 'doctors#index'
  get "/doctors/:id" => 'doctors#show'
  # -- Update
  get "/doctors/:id/edit" => 'doctors#edit'
  patch "/doctors/:id" => 'doctors#update'
  # --- Delete
  delete "/doctors/:id" => 'doctors#destroy'

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
