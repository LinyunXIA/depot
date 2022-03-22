# config valid for current version and patch releases of Capistrano
lock "~> 3.17.0"

#basic configuration
set :application, "depot"
set :repo_url, "git@github.com:LinyunXIA/depot.git"
set :deploy_user, "deployment"
set :deploy_to, "/home/#{fetch(:deploy_user)}/#{fetch(:application)}"
set :deploy_via, "remote_cache" #本地cache, 第一次是git clone,后面是git pull

#rbenv
set :rbenv_type, :user
set :rbenv_ruby, '3.1.1'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

# Default value for keep_releases is 5
set :keep_releases, 10


# files we want symlinking to specific entries in shared
#set :linked_files, %w{config/database.yml config/application.yml config/secrets.yml config/credentials.yml.enc}

# dirs we want symlinking to shared
#set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

#namespace :deploy do
#  after :finishing, 'deploy:cleanup'
#end