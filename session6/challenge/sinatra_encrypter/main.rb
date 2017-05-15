
require 'sinatra'
require 'shotgun'
require_relative 'encryptor'

get "/encrypt" do
erb :new
end

# Functionining as your create controller.
post "/encrypt" do

encryptor = Encryptor.new
encrypted_message = encryptor.encrypt(params[:message])

erb :index, locals: {encrypted_message: encrypted_message}

end
