set :stage, :staging
set :rails_env, :staging
set :rack_env, :staging
set :branch, 'main'
set :deploy_to, '/var/www/anki-gpt'

server "122.248.207.27", user: "ubuntu", roles: %w(web app db)