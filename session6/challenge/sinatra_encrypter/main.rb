
require 'sinatra'
require 'shotgun'
require_relative 'encryptor'

include Encryptor

get "/encrypt" do
erb :new
end

# Functionining as your create controller.
post "/encrypt" do

encrypted_message = encrypt(params[:message])

erb :index, locals: {encrypted_message: encrypted_message}

end
