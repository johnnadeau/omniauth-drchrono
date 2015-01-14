require "omniauth-drchrono/version"
require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class DrChrono < OmniAuth::Strategies::OAuth2
      option :name, "drchrono"
      option :client_options, {
        :site => 'https://drchrono.com',
        :authorize_url => '/o/authorize',
        :token_url => '/o/token'
      }
    end
  end
end

OmniAuth.config.add_camelization 'drchrono', 'DrChrono'
