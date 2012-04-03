Aavco::Application.routes.draw do
  resources :current_events

	root :to => 'homes#index'
	match '/' => 'homes#index'
	match 'about' => 'about_aas#index'
	match 'guidelines' => 'guidelines#index'
	match 'service' => 'services#index'
	match 'meetings' => 'meetings#index'
	match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
	match 'events' => 'current_events#index'
	match 'forms' => 'forms#index'
	match 'Blank_Update_Form.pdf' => "forms#Blank_Update_Form.pdf"
	match 'Blank_Update_Form.rtf' => "forms#Blank_Update_Form.rtf"
	
	match 'calculator' => 'calculator#index'
	match 'links' => 'links#index'
	match 'contact' => 'contacts#index'
	
  resources :codes

  resources :cities

  resources :locations

  resources :contacts

  resources :links

  resources :calculators

  resources :forms

  resources :meetings

  resources :services

  resources :guidelines

  resources :about_aas

  resources :homes

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
  # match ':controller(/:action(/:id))(.:format)'
end
