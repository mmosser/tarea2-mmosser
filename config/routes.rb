Rails.application.routes.draw do

  root 'pages#index'
 

  post 'instagram/tag/buscar' => 'instagram#buscar'


    #_________________________________________________________________________
    #some tests to develop the app:
    
    # match '/test' => 'application#testUri', via: :get
    # match '/test2' => 'application#testHTTParty', via: :get
    # match '/test3' => 'application#testHTTPartyWithVariable', via: :get
    # match '/testParam' => 'application#testParam', via: :post
    # match '/testMeta' => 'application#testHTTPartyWithParam', via: :post
    # match '/testPosts' => 'application#testPosts', via: :post

    # #__________________________________________________________________________
    # #apis to get a part of the JSON response:

    # match '/tag/metadata' => 'application#getMetadata', via: :post
    # match '/tag/posts' => 'application#getPosts', via: :post





  

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
