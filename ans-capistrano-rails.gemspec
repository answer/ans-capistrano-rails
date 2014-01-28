# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ans/capistrano/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ans-capistrano-rails"
  spec.version       = Ans::Capistrano::Rails::VERSION
  spec.authors       = ["sakai shunsuke"]
  spec.email         = ["sakai@ans-web.co.jp"]
  spec.description   = %q{capistrano/rails の migrations タスクのあとに db:seed を呼び出すタスクを追加}
  spec.summary       = %q{capistrano 用 db:seed タスク}
  spec.homepage      = "https://github.com/answer/ans-capistrano-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "capistrano-bundler"
  spec.add_dependency "capistrano-rails"
end
