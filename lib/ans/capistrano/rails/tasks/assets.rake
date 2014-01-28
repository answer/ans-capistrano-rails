namespace :deploy do
  namespace :assets
    task :set_rails_groups do
      fetch(:default_env)[:RAILS_GROUPS] = "assets"
    end
    task :remove_rails_groups do
      fetch(:default_env).delete(:RAILS_GROUPS)
    end

    before :precompile, :set_rails_groups
    after :precompile, :remove_rails_groups
  end
end
