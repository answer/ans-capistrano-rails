# Ans::Capistrano::Rails

capistrano 用 db:seed タスク

capistrano/rails の migrations タスクのあとに db:seed の呼び出しを追加する

assets を読み込むと、 precompile の前に `RAILS_GROUPS=assets` の設定を行う  
これは turbo-sprockets-rails3 が `RAILS_GROUPS` と `RAILS_ENV` がないと他の環境変数を引き継がないで precompile を起動することを防ぐ

## Installation

Add this line to your application's Gemfile:

    gem 'ans-capistrano-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ans-capistrano-rails

## Usage

    # Capfile
    require "capistrano/bundler"
    require "ans/capistrano/rails/seeds"
    require "ans/capistrano/rails/assets"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
