require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/pokemon'

get '/' do
  redirect 'pokemons'
end

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

post '/pokemons' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemons/#{@pokemon.id}"
end

get '/pokemons/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

put '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemons/#{@pokemon.id}"
end


delete '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect '/pokemons'
end

#Pokemon
# *************************************************************

# get '/pokemons' do
#   @pokemon = Pokemon.all
#   erb :"pokemons/index"
# end
#
# get '/pokemon/new' do
#   erb :"pokemons/new"
# end
#
# get '/pokemon/:id' do
#   @pokemon = Pokemon.find(params[:id])
#   erb :"pokemons/show"
# end

# post '/pokemon' do
#   @pokemon = Pokemon.create(params[:pokemon])
#   redirect "/pokemons/#{@pokemon.id}"
# end
#
# get '/pokemon/:id/edit' do
#   @pokemon = Pokemon.find(params[:id])
#   erb :"pokemons/edit"
# end
#
# put '/pokemons/:id' do
#   @pokemon = Pokemon.find(params[:id])
#   @pokemon.update(params[:pokemon])
#   redirect "/pokemon/#{@pokemon.id}"
# end
#
#
# delete '/pokemon/:id' do
#   @pokemon = Pokemon.find(params[:id])
#   @pokemon.destroy
#   redirect '/pokemons'
# end
