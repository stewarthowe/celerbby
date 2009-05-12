# CelerBBy Routes

# Index page
get '/' do
  erb :index
end

# New form
get '/new' do
  erb :new
end

# New POST handler
post '/new' do
  @post = Post.new
  @post.attributes = {
		:subject => params[:post_subject] , 
		:message => params[:post_message] , 
		:created => Time.now
	}

  if @post.save
    redirect '/view/' + post.id
  else
    redirect '/'
  end
end

# View All posts
get '/posts' do
  @posts = Post.all
  if @posts 
    erb :posts
  else
    redirect '/' 
  end
end

# View post
get '/view/:id' do
  @post = Post.get(params[:id])
  if @post
    erb :view
  else
    redirect '/'
  end
end

