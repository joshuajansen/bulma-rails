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

1. Add `@use "bulma";` to your application.scss to load all styles.
2. Run `rails dartsass:build` or `./bin/dev` to generated CSS output


## Modularity
Modularity in Bulma helps to import only what you need.
As an example, Layout features like Bulma's columns can be loaded directly without requiring any additional files. Simply load the `columns.scss` file with the `@use` keyword into your `application.scss`:

    @use "bulma_sass/grid/columns";

For more information about Modularity see [Modularity in bulma](https://bulma.io/documentation/start/modular/)

## Mixins

For using mixins add the following line to your `application.scss`:

    @use "bulma_sass/utilities/mixins";

For more information about Mixins see [Bulma Sass Mixins](https://bulma.io/documentation/sass/mixins/)

## Customization

To overwrite Bulma’s Sass variables with your own value, write `@use` and the `with` keyword for example to your `application.scss`:
```
// Set your brand colors
$purple: #8a4d76;
$pink: #fa7c91;
$brown: #757763;
$beige-light: #d0d1cd;
$beige-lighter: #eff0eb;

// Override global Sass variables from the /utilities folder
@use "bulma_sass/utilities" with (
  $family-primary: '"Nunito", sans-serif',
  $grey-dark: $brown,
  $grey-light: $beige-light,
  $primary: $purple,
  $link: $pink,
  $control-border-width: 2px
);

// Load all styles
@use "bulma";
```

This allows you to override Bulma’s global variables from the `utilities` folder.

For more information about Customization see [Customize with Modular Sass](https://bulma.io/documentation/customize/with-modular-sass/)

## Helpful references

Migrating to Bulma v1 and discover what changes, see [Migrating to Bulma v1](https://bulma.io/documentation/start/migrating-to-v1/)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
