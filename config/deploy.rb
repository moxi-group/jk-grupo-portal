# config valid for current version and patch releases of Capistrano
lock "~> 3.18.0"

set :application, "jk_grupo"
set :repo_url, "git@github.com:moxi-group/jk-grupo-portal.git"
set :deploy_to, "/opt/projects/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :keep_releases, 3