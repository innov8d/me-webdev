set :rails_env,   "production"
set :unicorn_env, "production"
set :app_env,     "production"
set :deploy_to, "/opt/sites/bookstore.innov8d.com"
set :current_path, "/opt/sites/bookstore.innov8d.com/current"
set :unicorn_pid, "#{current_path}/tmp/pids/unicorn.pid"
set :branch, "master"

role :web, "web1.innov8d.com"                          # Your HTTP server, Apache/etc
role :app, "app1.innov8d.com"                          # This may be the same as your `Web` server
role :db,  "app1.innov8d.com", :primary => true # This is where Rails migrations will run

require "rvm/capistrano"
set :rvm_ruby_string, "ruby-1.9.3-p429@bookstore.innov8d.com"
set :rvm_type, :system

require "bundler/capistrano"

set :application, "bookstore.innvo8d.com"
set :repository,  "git@git1.innov8d.com:bookstore.innov8d.com"
set :user, "ubuntu"
set :group, "www-data"

set :use_sudo, false
set :deploy_via, :copy
set :copy_strategy, :export

set :scm, :git

after "deploy:finalize_update","deploy:config_symlink"
after "deploy:assets:precompile","deploy:set_perms"

namespace :deploy do
	task :config_symlink do
		run "rm -rf #{release_path}/config/unicorn"
		run "mkdir #{release_path}/config/unicorn"
		run "ln -s #{shared_path}/config/unicorn.rb #{release_path}/config/unicorn/#{rails_env}.rb"
		run "rm -f #{release_path}/config/database.yml"
		run "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
		run "rm -f #{release_path}/db/production.sqlite3"
		run "ln -s #{shared_path}/dbs/production.sqlite3 #{release_path}/db/production.sqlite3"
		run "ln -s #{shared_path}/downloads/ #{release_path}/tmp/downloads"
		run "ln -s #{shared_path}/uploads/ #{release_path}/public/uploads"
	end

	task :set_perms do
		sudo "chown -R www-data #{release_path}/tmp"
		sudo "chown -R www-data #{release_path}/log"
	end
end

set :use_sudo, true
set :unicorn_bin, "rvmsudo unicorn"

require 'capistrano-unicorn'
