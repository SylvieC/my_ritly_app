class LinksController < ApplicationController


def index
	@links = Link.all
end

def new
end

def create
  link_params = params.require(:link).permit(:length)
  length = link_params[:length]
   url_params = params.require(:link).permit(:url)
   url = url_params[:url]
   random_string = ''
   if length == nil
     random_string = SecureRandom.urlsafe_base64(10)
   else
      random_string = SecureRandom.urlsafe_base64(length) 
  end
  
  new_link = Link.new
  new_link['url'] = url  #is it ok to write instead new_link.url = url....
  new_link['random_string'] = random_string
  @link = new_link
  @link.save 
  redirect_to show_path(@link.id)
end

def show
  id = params[:id]
  @link = Link.find(id)
end


def go
  id1 = params[:id]
  link = Link.find(:id1)
  id = link.random_string
end

end





