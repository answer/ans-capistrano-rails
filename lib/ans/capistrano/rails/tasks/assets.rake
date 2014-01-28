namespace :assets do
  task :set_rails_groups do
    fetch(:default_env)[:RAILS_GROUPS] = "assets"
  end
  task :remove_rails_groups do
    fetch(:default_env).delete(:RAILS_GROUPS)
  end

  before :"deploy:compile_assets", :set_rails_groups
  after :"deploy:compile_assets", :remove_rails_groups
end
