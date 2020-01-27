set :stage, :production
set :branch, :master
set :deploy_to, "/u01/apps/qwinix/vaidehi-practice"
role :app, %w{deploy@52.15.117.183}
role :web, %w{deploy@52.15.117.183}
role :db, %w{deploy@52.15.117.183}
server '52.15.117.183', roles: %w{:web, :app, :db}, user: 'deploy'
set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  auth_methods: %w(publickey)
