MyRitlyApp::Application.routes.draw do


	root to: "links#index"
 
get '/links/:id', to: 'links#show'
post '/links', to: "links#create", as: 'link_create'


end
