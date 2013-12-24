# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
	token_file = Rails.root.join('secret')
	if(File.exist?(token_file)
		File.read(token_file).chomp
		#Use the existing token	
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token	
	end
end	


SampleApp::Application.config.secret_key_base = '40e8faa6a98280972d50330d8a0a413c6391bad5d82da0076d954abce30851d28345f3820ffc08dcc18647d82f38c185e3c4df094465348baa7bd95bd4177f04'
