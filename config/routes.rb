MyRitlyApp::Application.routes.draw do


	root to: "links#index", as: 'links'
 

post '/links', to: "links#create", as: 'link_create'
get '/links/:id', to: 'links#show', as: 'show'
get '/links/:id/preview', to: 'links#preview'
get '/go/:link_code', to: 'links#go'

end
