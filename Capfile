# Load DSL and set up stages
require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/rbenv'
require 'capistrano/rails/console'

set :rbenv_type, :user
set :rbenv_ruby, '3.2.2'

install_plugin Capistrano::SCM::Git



Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
