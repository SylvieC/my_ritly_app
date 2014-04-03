MyRitlyApp::Application.routes.draw do

 
resources  :users, :sessions



root to: "links#index", as: 'links'

get '/signup', to: 'users#new'
match '/signout', to: 'sessions#destroy', via: :delete
get'/signin' => 'sessions#new'

post '/links', to: "links#create", as: 'link_create'
get '/links/:id', to: 'links#show', as: 'show'
get '/links/:id/preview', to: 'links#preview'
get '/go/:link_code', to: 'links#go'

end
