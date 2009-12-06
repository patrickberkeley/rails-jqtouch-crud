ActionController::Routing::Routes.draw do |map|
  map.resources :contacts
  map.resource :contact, :member => { :delete => :get }
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
