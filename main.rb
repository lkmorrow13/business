require 'sinatra'
require 'pony'

get '/' do
	erb :home
end

get '/menu' do
	erb :menu
end

get '/contact' do
	erb :contact
end

get '/about' do
	erb :about
end

get '/aot' do
	erb :aot
end

post '/contactUs' do
	@email = params[:email]
	@subject = params[:subject]
	@content = params[:content]
	Pony.mail(:to => 'you@example.com', :from => @email, :subject => @subject, :body => @content)
end