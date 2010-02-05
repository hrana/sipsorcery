# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_proxy_session',
  :secret      => 'b15c0f7c96f97b1c78d0fafc6e2a825bd618c4abeae13d2a7930f1cda4bb2413abde5cc3f95aaf6b25c44744ccf52b36832691818360e201723825c921da5657'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
