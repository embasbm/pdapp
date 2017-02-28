# server ip address, username with which you ssh to your server and the roles assigned to this server
server 'vagrant', user: 'vagrant', roles: %w{app db web}

set :deploy_to, '/home/vagrant/apps'

set :app_path, '/home/vagrant/apps/current'
set :app_debug, false
