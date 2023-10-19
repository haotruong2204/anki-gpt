set :stage, :staging
set :rails_env, :staging
set :rack_env, :staging
set :branch, 'main'
set :deploy_to, '/home/ubuntu/anki-gpt'

server "54.179.89.148", user: "ubuntu", roles: %w(web app db)