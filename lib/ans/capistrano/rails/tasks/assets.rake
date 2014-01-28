namespace :assets do
  task :set_rails_groups do
    fetch(:default_env)[:RAILS_GROUPS] = "assets"
  end
  task :remove_rails_groups do
    fetch(:default_env).delete(:RAILS_GROUPS)
  end

  before :"assets:precompile", :set_rails_groups
  after :"assets:precompile", :remove_rails_groups
end
