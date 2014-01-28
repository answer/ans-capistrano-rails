require "capistrano/bundler"
require "capistrano/rails/migrations"

load File.expand_path("../tasks/seeds.rake", __FILE__)
