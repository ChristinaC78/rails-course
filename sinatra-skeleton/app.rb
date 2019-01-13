require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'test.db' }

get '/' do
    'Hello World'
end