set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/home/ubuntu/anki-gpt'

server "52.74.143.65", user: "ubuntu", roles: %w(web app db)