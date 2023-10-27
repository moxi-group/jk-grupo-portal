# config valid for current version and patch releases of Capistrano
lock "~> 3.18.0"

set :application, "sempre_chique"
set :repo_url, "git@github.com:cabanga/sempre-chique-portal.git"
set :deploy_to, "/opt/projects/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :keep_releases, 5