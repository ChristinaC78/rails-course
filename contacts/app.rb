require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'test.db' }

class Contacts < ActiveRecord::Base
end

get '/contacts' do
    @contacts = Contacts.all
    erb :contacts
end

get '/contacts/new' do
    erb :new
end

post '/contacts' do
    contact = Contacts.new
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts'
end

get '/contacts/search' do
    erb :search
end

get 'contacts/search' do 
    @contacts = Contacts.where("first_name LIKE ? OR last_name LIKE ?", query, query)
    redirect '/contacts'
end

