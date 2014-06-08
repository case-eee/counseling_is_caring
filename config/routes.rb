Rails.application.routes.draw do

namespace :counselor do
  resources :sessions
end

resources :appointments

get '/book' => 'appointments#view_all_sessions', as: :book_appointment
get '/past_appointments' => 'appointments#past_appointments', as: :past_appointment

# get /login (enter name pw) login#form
# post /login (set userid in session) login#login
# get /logout login#logout
get '/login' => 'login#new', :as => 'login'
post '/login' => 'login#create'
get '/logout' => 'login#destroy', :as => 'logout'

# get /signup (enter name pw) users#new
# post /signup (creates a user in the db) users#create
get '/signup' => 'users#new', :as => 'signup'
post '/signup' => 'users#create'



root 'login#new'


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

    # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
end
