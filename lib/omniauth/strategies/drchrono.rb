require "omniauth/drchrono/version"
require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class DrChrono < OmniAuth::Strategies::OAuth2
      option :name, "drchrono"
    end
  end
end
