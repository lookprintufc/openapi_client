=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::InlineResponse2004
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InlineResponse2004' do
  before do
    # run before each test
    @instance = OpenapiClient::InlineResponse2004.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2004' do
    it 'should create an instance of InlineResponse2004' do
      expect(@instance).to be_instance_of(OpenapiClient::InlineResponse2004)
    end
  end
  describe 'test attribute "success"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
