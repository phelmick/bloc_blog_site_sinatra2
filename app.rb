#!/usr/bin/env ruby

require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/app.db")

class BlogPost
  # just giving ourselves access to datamapper's methods
    include DataMapper::Resource

    # now let's add any attributes we want in our table
    # the datamapper docs can help you with what data types are available

    property :id, Serial
    property :title, Text
    property :body, Text
end

DataMapper.finalize.auto_upgrade! 

get '/' do
  @blog_posts = BlogPost.all order: :id.asc
  erb :index
end

get '/posts/:id' do
  @blog_post = BlogPost.get params[:id]
  erb :show   
end

get '/edit/:id' do
  @blog_post = BlogPost.get params[:id]
  erb :edit   
end


post '/new_post' do
    # all our parameters are located in the params variable - which is a hash
    blog_post = BlogPost.new
    blog_post.title = params[:title]
    blog_post.body = params[:body]
    blog_post.save

    redirect "/"
end

post '/edit_post' do
    # all our parameters are located in the params variable - which is a hash
    blog_post = BlogPost.get params[:id]
    blog_post.title = params[:title]
    blog_post.body = params[:body]
    blog_post.save

    redirect "/"
end
