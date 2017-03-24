[![Gem Version](https://badge.fury.io/rb/omniauth-drchrono.svg)](http://badge.fury.io/rb/omniauth-drchrono)

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

Or with [devise](https://github.com/plataformatec/devise)

```ruby
config.omniauth :drchrono, ENV["DRCHRONO_CLIENT_ID"],
ENV["DRCHRONO_CLIENT_SECRET"]
```

### Auth hash example
```ruby
request.env['omniauth.auth'].to_yaml
```

```yaml
--- !ruby/hash:OmniAuth::AuthHash
provider: drchrono
uid: testuid
info: !ruby/hash:OmniAuth::AuthHash::InfoHash
  doctor: !ruby/hash:OmniAuth::AuthHash
    id: 12345
    first_name: Jon
    last_name: Snow
    email: white_wolf@westeros.com
    specialty: Lord Commander
    job_title: King in the North
    suffix: ''
    website: http://www.bastard.com
    home_phone: ''
    office_phone: 123-456-7890
    cell_phone: 123-456-7890
    country: Seven Kingdoms
    npi_number: '123456789'
    group_npi_number: '987654321'
    practice_group: 123
  offices:
  - !ruby/hash:OmniAuth::AuthHash
    id: 123
    name: Winterfell
    exam_rooms: !ruby/array:Hashie::Array
    - !ruby/hash:OmniAuth::AuthHash
      index: 1
      name: Crypts
      online_scheduling: false
    - !ruby/hash:OmniAuth::AuthHash
      index: 2
      name: Godswood
      online_scheduling: false
    - !ruby/hash:OmniAuth::AuthHash
      index: 3
      name: Tower
      online_scheduling: false
    start_time: '00:00:00'
    end_time: '00:00:00'
    address: "Castle Black"
    city: the Wall
    state: the North
    zip_code: '1234'
    country: Seven Kingdoms
    online_scheduling: false
    phone_number: "(123) 456-7890"
    doctor: 12345
    archived: false
    fax_number: ''
credentials: !ruby/hash:OmniAuth::AuthHash
  token: abc123
  refresh_token: abc123
  expires_at: 1490448404
  expires: true
extra: !ruby/hash:OmniAuth::AuthHash
  raw_info: !ruby/hash:OmniAuth::AuthHash
    username: jon_snow
    is_staff: false
    is_doctor: true
    doctor: 12345
    id: 345678
    practice_group: 6789
```

## Contributing

1. Fork it ( https://github.com/johnnadeau/omniauth-drchrono/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
