# Guard::Hologram

Guard plugin for the [https://github.com/trulia/hologram] gem

## Installation

Add this line to your application's Gemfile:

    gem 'guard-hologram', :require => false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-hologram

## Setup

    guard init
    
## Usage

    bundle exec guard
    
## Configuration

    | Option      | Definition                               | Default             |
    |-------------|------------------------------------------|---------------------|
    | config_path | relative path to your configuration file | hologram_config.yml |
    
### Sample Guardfile

```ruby
guard "hologram", config_path: "hologram.yml" do
  watch(%r{app/assets/stylesheets/.*css})
  watch(%r{app/views/docs/styleguide/doc_assets/.+})
  watch('hologram.yml')
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
