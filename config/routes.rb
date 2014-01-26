MyRitlyApp::Application.routes.draw do


	root to: "links#index", as: 'links'
 
get '/links/:id', to: 'links#show'
post '/links', to: "links#create", as: 'link_create'
# get '/go/:id', to: "links#go", as: 'final_path'


end
