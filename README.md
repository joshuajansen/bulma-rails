# bulma-rails

Integrates [Bulma](http://bulma.io/) with the rails asset pipeline.

A modern CSS framework based on Flexbox.

## Installation

Add this line to your application's Gemfile:

    gem "bulma-rails", "~> 0.0.20"

And then execute:

    $ bundle

## Usage

To import all assets in your Rails project, add the following line to your application.scss:
``` ruby
@import "bulma";
```

If you want to customize Bulma, you can import all folders manually in your application.scss:

``` ruby
@import "bulma/utilities/utilities";
@import "bulma/config/variables";
@import "bulma/config/generated-variables";
@import "bulma/base/base";
@import "bulma/elements/elements";
@import "bulma/components/components";
@import "bulma/layout/layout";
```

For more information about customizing Bulma, see: [http://bulma.io/documentation/overview/](http://bulma.io/documentation/overview/)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
