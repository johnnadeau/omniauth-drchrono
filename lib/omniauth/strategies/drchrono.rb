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

      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'drchrono', 'DrChrono'
