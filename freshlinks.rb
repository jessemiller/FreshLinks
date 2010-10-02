require 'rubygems'
require 'sinatra'
require 'ruby-freshbooks'
Dir[File.dirname(__FILE__) + '/controllers/*.rb'].each {|file| require file }

get '/callback' do
  controller = create_controller(params)
  controller.go
end

post '/callback' do
  controller = create_controller(params)
  controller.go
end

def create_controller(params) 
  controller_class_name = params[:name].split('.').collect { |n| n.capitalize }.join
  controller = Object.const_get(controller_class_name).new(params)
end
  
  