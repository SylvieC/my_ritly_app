MyRitlyApp::Application.routes.draw do


	root to: "links#index", as: 'links'
 

post '/links', to: "links#create", as: 'link_create'
get '/links/:id', to: 'links#show', as: 'show'
# get '/go/:id1', to: ":id2"

get '/go/:link_code', to: 'links#go'
get '/go/:link_code/preview', to: 'links#preview'

end
