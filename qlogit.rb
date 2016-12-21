require "sendgrid-ruby"
require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "./models"

set :database, "sqlite3:qlog-db.sqlite3"

enable :sessions

