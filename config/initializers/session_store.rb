# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jqtouch_session',
  :secret      => '4daf1a423b144419841d764be79d075c5ccce81d960740509fd814015a4c0dd41f42e28914d9a9a8f128801399629d7911e6ea7b33a21c82b0a32babe757fc8f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
