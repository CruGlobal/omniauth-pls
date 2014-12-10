require 'spec_helper'
require 'omniauth-pls'

describe OmniAuth::Strategies::PLS do
  let(:app) { lambda { [200, {}, ["Hello."]] } }
  let(:subject) { OmniAuth::Strategies::PLS.new(app, 'test_client_id', 'test_client_secret', @options) }

  before do
    OmniAuth.config.test_mode = true
  end

  after do
    OmniAuth.config.test_mode = false
  end

  it_should_behave_like 'an oauth2 strategy'
end
