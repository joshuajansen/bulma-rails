# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = 'bulma-rails'
  gem.version       = '0.9.4-dartsass'
  gem.authors       = ["Joshua Jansen"]
  gem.email         = ["joshuajansen88@gmail.com"]
  gem.description   = %q{A modern CSS framework based on Flexbox}
  gem.summary       = %q{This gem adds the bulma.io assets to your asset pipeline so you can import them in your Rails project.}
  gem.homepage      = "https://github.com/joshuajansen/bulma-rails"

  gem.files         = `git ls-files`.split($\)
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'

  gem.add_runtime_dependency "dartsass-rails", "~> 0.5.0"
end
