# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_medadata_session',
  :secret      => '65327ddb0f6af618645d207dcbf07e62deec5ab1ccfcaef6b82ce0c1b20107a91bdd87b3f69f3f8dbe7323dc0c1c4ad703e635c27a24bc49036c893740471990'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
