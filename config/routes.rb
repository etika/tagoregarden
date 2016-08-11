Rails.application.routes.draw do

  resources :schemes
  mount Ckeditor::Engine => '/ckeditor'
  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"


  post 'reviews/create'
  get 'reviews/show'
  resources :entries
  resources :categories
  resources :updates
  get 'home'=>'home#index'
  get 'coming-soon'=>'home#coming_soon'
  get 'about-us'=>'home#about_us'
  get 'search'=>'home#search'
  # get 'contact-us'=>'home#contact_us'
  get 'faq'=>'home#faq'
  get 'map-display'=>'home#map_display'
  mount Thredded::Engine => '/forum'
  resources :updates do
    get :autocomplete_tag_name, :on => :collection
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#coming_soon'
   devise_for :users, :controllers => { :registrations => 'registrations' ,:omniauth_callbacks => "omniauth_callbacks",:sessions => 'sessions',confirmations: 'confirmations',:passwords => "passwords"}
# get 'users/auth/:provider/callback', to: 'sessions#create'




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
