# Ans::Capistrano::Rails

capistrano 用 db:seed タスク

capistrano/rails の migration タスクのあとに db:seed の呼び出しを追加する

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
    require "ans/capistrano/rails"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
