set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/home/ubuntu/anki-gpt'

server "122.248.207.27", user: "ubuntu", roles: %w(web app db)