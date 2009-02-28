# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_host_app_session',
  :secret      => '4be394c18cac0209a91447f9327cdc59e4a3dc6a62a5b9b3554221db4c27825a6de942220bb11c5740d111de8a0262134466e8c07c29f08292e0797edb967537'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
