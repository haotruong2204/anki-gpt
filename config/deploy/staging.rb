set :stage, :staging
set :rails_env, :staging
set :rack_env, :staging
set :branch, 'main'
set :deploy_to, '/home/ubuntu/anki-gpt'

server "52.74.143.65", user: "ubuntu", roles: %w(web app db)