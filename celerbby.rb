DataMapper::setup(:default, 'mysql://root:B68v69er@localhost/celerbby')

class Post
  include DataMapper::Resource
  
  property :id,		Integer, :serial => true
  property :subject,	String
  property :message,	Text,	 :nullable => false
  property :created,	DateTime
end

# DataMapper.auto_migrate!

load 'celerbby_routes.rb'
