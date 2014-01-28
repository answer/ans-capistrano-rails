namespace :deploy do

  desc 'Runs rake db:seed if seeds are set'
  task :seed => [:set_rails_env] do
    on primary fetch(:seed_role) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:seed"
        end
      end
    end
  end

  after 'deploy:migrate', 'deploy:seed'
end

namespace :load do
  task :defaults do
    set :seed_role, fetch(:seed_role, :db)
  end
end
