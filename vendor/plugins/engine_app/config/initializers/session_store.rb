# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_engine_app_session',
  :secret      => '05a63bcbf17d7f8f12baad18c9056b8814db515a3c81bf94ee40720149cad9934886b9e9fd90524a5bfd0437a02b700e19c5fe28fb6bfeec934b2bedbe241aae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
