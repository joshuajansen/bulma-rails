# Bulma Sass for Rails

[Bulma](http://bulma.io/) is a modern CSS framework based on Flexbox
that provides ready-to-use frontend components that you can easily combine
to build responsive web interfaces. It provides CSS classes to help you style your HTML code.

## Installation

From [v 1.0.0](https://github.com/jgthms/bulma/releases/tag/1.0.0) Bulma is a full rewrite of using [Dart Sass](https://sass-lang.com/dart-sass/).

This gem integrates [Bulma](http://bulma.io/) with the rails asset pipeline.

#### For a fresh Rails application

1. Add `gem "bulma-rails", "~> 1.0.0"` to your application's Gemfile
2. Run `./bin/bundle add dartsass-rails`
3. Run `./bin/rails dartsass:install`
4. Delete default entry point `rm app/assets/stylesheets/application.css`

#### For a Rails application that already uses Dart Sass

1. Add `gem "bulma-rails", "~> 1.0.0"` to your application's Gemfile
2. And then execute `bundle`

#### For a Rails application that uses sassc-rails or sass-rails
1. Delete `sassc-rails` or `sass-rails` gem from your application's Gemfile
2. Add `gem "bulma-rails", "~> 1.0.0"` to your application's Gemfile
3. Run `./bin/bundle add dartsass-rails`
4. Run `./bin/rails dartsass:install`

if you encountered with `LoadError: cannot load such file -- sassc`
run `rails tmp:clear` and restarting the server.

## Usage

1. Add `@use "bulma";` to your application.scss
2. Run `rails dartsass:build` or `./bin/dev` to generated CSS output

For information about customizing Bulma,
see: [Customizing with Sass](http://bulma.io/documentation/overview/customize/). As you don't need to download any files, jump to **2 Set your variables**. Beware that the example shown there uses SASS instead of SCSS syntax.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
