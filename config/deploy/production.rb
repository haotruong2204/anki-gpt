set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/home/ubuntu/anki-gpt'

server "54.179.89.148", user: "ubuntu", roles: %w(web app db)