require "omniauth-drchrono/version"
require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class DrChrono < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      option :name, "drchrono"
      option :client_options, {
        :site => 'https://drchrono.com/api',
        :authorize_url => 'https://drchrono.com/o/authorize',
        :token_url => 'https://drchrono.com/o/token'
      }
    end
  end
end

OmniAuth.config.add_camelization 'drchrono', 'DrChrono'
