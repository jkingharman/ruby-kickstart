
require 'sinatra'
require 'shotgun'
require_relative 'encryptor'

include Encryptor

get "/" do
  erb :root_index
end

get "/encrypt_new" do
erb :encrypt_new
end

# Functionining as your create controller.
post "/encrypt_create" do
encrypted_message = encrypt(params[:message])
erb :encrypt_index, locals: {encrypted_message: encrypted_message}
end


get "/decrypt_new" do
erb :decrypt_new
end

# Functionining as your create controller.
post "/decrypt_create" do
decrypted_message = decrypt(params[:message])
erb :decrypt_index, locals: {decrypted_message: decrypted_message}
end
