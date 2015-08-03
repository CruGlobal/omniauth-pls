require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Pls < OmniAuth::Strategies::OAuth2
      option :name, 'pls'

      option :client_options, {
        site: 'https://www.myletterservice.org',
        authorize_url: '/oauth/authorize',
        token_url: '/oauth/token'
      }

      uid { raw_info['id'] }

      info do
        {}
      end

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        @raw_info ||= {}
      end

      def request_phase
        options.request_params ||= {}
        super
      end

    end
  end
end
