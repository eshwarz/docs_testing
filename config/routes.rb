Ptqs::Application.routes.draw do
  
  get "docs/index"
  get "docs/reports"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  match '/auth/:provider/callback' => 'authentications#create'

  devise_for :users, :controllers => { :registrations => 'registrations' } do
    get '/users/sign_out' => 'devise/sessions#destroy' # added this becaause of sign_out bug.
  end

  resources :authentications
  resources :docs
  resources :versions
  resources :requests
  resources :mappings
  resources :issues
  resources :timelines do
    collection do 
      post :index
      put :update_multiple
    end
  end

  controller :home do
    # match '/reports', :action => 'reports', :as => 'reports'
    match '/home', :action => 'index', :as => 'home'
  end

  controller :docs do
    match '/docs/index'
  end

  controller :requests do
    match '/requests/convert/:id', :action => 'convert_to_version', :as => 'convert_to_version'
  end

  controller :reports do
    match '/reports', :action => 'index', :as => 'reports'
    get 'reports/group_documents'
    get 'reports/group_status'
    post 'reports/document_history'
    match 'reports/pqs_matrix', :action => 'pqs_matrix', :as => 'pqs_matrix'
    match 'reports/onhold_report', :action => 'onhold_report', :as => 'onhold_report'
    match 'reports/open_requests', :action => 'open_requests', :as => 'open_requests'
    match 'reports/document_hierarchy', :action => 'document_hierarchy', :as => 'document_hierarchy'
  end

  controller :devise_checker do
    match '/check_devise', :action => 'check_devise', :as => 'check_devise'
  end

  root :to => 'docs#index'

end
