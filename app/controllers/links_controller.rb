class LinksController < ApplicationController


def index
	@links = Link.all
end

def new
end

def create
  new_link = params.require(:link).permit(:old_value, :length)
  if  new_link['length'].to_i == 16
    new_link['new_value']= SecureRandom.base64
  else
    new_link['new_value'] = generate_random_url_of_length(new_link['length'])
  end
  @link = Link.create(new_link)

  redirect_to links_path(@link.id)
end

def show
end

def generate_random_url_of_length (n)
    answer = SecureRandom.base64(3*(n+1)/4)
    if n%4 == 0
       return answer
    elsif n%4 != 0
       return answer[4-n%4,answer.length]
    end
end 



end
