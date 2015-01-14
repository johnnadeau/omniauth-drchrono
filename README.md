# Omniauth::Drchrono

This is an OmniAuth strategy for authenticating to drchrono. To use it, you'll need to sign up for the [drchrono api](https://www.drchrono.com/api/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-drchrono'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-drchrono

## Usage

```ruby
use OmniAuth::Builder do
  provider :drchrono, ENV['DRCHRONO_CLIENT_ID'], ENV['DRCHRONO_CLIENT_SECRET']
end
```

## Contributing

1. Fork it ( https://github.com/johnnadeau/omniauth-drchrono/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
