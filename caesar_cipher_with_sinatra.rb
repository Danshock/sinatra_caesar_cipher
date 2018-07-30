require 'sinatra'
require 'sinatra/reloader'
# ^ remove before pushing to Heroku OR use "if development?" 

get '/' do
	"Hello, World!"
end