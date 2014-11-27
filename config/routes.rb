Rails.application.routes.draw do


  root 'barbers#index'

  # Routes for the Works_at resource:
  # CREATE
  get('/works_ats/new', { :controller => 'works_ats', :action => 'new' })
  get('/create_works_at', { :controller => 'works_ats', :action => 'create' })

  # READ
  get('/works_ats', { :controller => 'works_ats', :action => 'index' })
  get('/works_ats/:id', { :controller => 'works_ats', :action => 'show' })

  # UPDATE
  get('/works_ats/:id/edit', { :controller => 'works_ats', :action => 'edit' })
  get('/update_works_at/:id', { :controller => 'works_ats', :action => 'update' })

  # DELETE
  get('/delete_works_at/:id', { :controller => 'works_ats', :action => 'destroy' })
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get('/ratings/new', { :controller => 'ratings', :action => 'new' })
  get('/create_rating', { :controller => 'ratings', :action => 'create' })

  # READ
  get('/ratings', { :controller => 'ratings', :action => 'index' })
  get('/ratings/:id', { :controller => 'ratings', :action => 'show' })

  # UPDATE
  get('/ratings/:id/edit', { :controller => 'ratings', :action => 'edit' })
  get('/update_rating/:id', { :controller => 'ratings', :action => 'update' })

  # DELETE
  get('/delete_rating/:id', { :controller => 'ratings', :action => 'destroy' })
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get('/favorites/new', { :controller => 'favorites', :action => 'new' })
  get('/create_favorite', { :controller => 'favorites', :action => 'create' })

  # READ
  get('/favorites', { :controller => 'favorites', :action => 'index' })
  get('/favorites/:id', { :controller => 'favorites', :action => 'show' })

  # UPDATE
  get('/favorites/:id/edit', { :controller => 'favorites', :action => 'edit' })
  get('/update_favorite/:id', { :controller => 'favorites', :action => 'update' })

  # DELETE
  get('/delete_favorite/:id', { :controller => 'favorites', :action => 'destroy' })
  #------------------------------

  # Routes for the Hood resource:
  # CREATE
  get('/hoods/new', { :controller => 'hoods', :action => 'new' })
  get('/create_hood', { :controller => 'hoods', :action => 'create' })

  # READ
  get('/hoods', { :controller => 'hoods', :action => 'index' })
  get('/hoods/:id', { :controller => 'hoods', :action => 'show' })

  # UPDATE
  get('/hoods/:id/edit', { :controller => 'hoods', :action => 'edit' })
  get('/update_hood/:id', { :controller => 'hoods', :action => 'update' })

  # DELETE
  get('/delete_hood/:id', { :controller => 'hoods', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Barbershop resource:
  # CREATE
  get('/barbershops/new', { :controller => 'barbershops', :action => 'new' })
  get('/create_barbershop', { :controller => 'barbershops', :action => 'create' })

  # READ
  get('/barbershops', { :controller => 'barbershops', :action => 'index' })
  get('/barbershops/:id', { :controller => 'barbershops', :action => 'show' })

  # UPDATE
  get('/barbershops/:id/edit', { :controller => 'barbershops', :action => 'edit' })
  get('/update_barbershop/:id', { :controller => 'barbershops', :action => 'update' })

  # DELETE
  get('/delete_barbershop/:id', { :controller => 'barbershops', :action => 'destroy' })
  #------------------------------

  # Routes for the Barber resource:
  # CREATE
  get('/barbers/new', { :controller => 'barbers', :action => 'new' })
  get('/create_barber', { :controller => 'barbers', :action => 'create' })

  # READ
  get('/barbers', { :controller => 'barbers', :action => 'index' })
  get('/barbers/:id', { :controller => 'barbers', :action => 'show' })

  # UPDATE
  get('/barbers/:id/edit', { :controller => 'barbers', :action => 'edit' })
  get('/update_barber/:id', { :controller => 'barbers', :action => 'update' })

  # DELETE
  get('/delete_barber/:id', { :controller => 'barbers', :action => 'destroy' })
  #------------------------------

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
