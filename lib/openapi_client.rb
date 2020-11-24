=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/ack'
require 'openapi_client/models/ban_settings'
require 'openapi_client/models/ban_test_action'
require 'openapi_client/models/ban_test_status'
require 'openapi_client/models/chat'
require 'openapi_client/models/chat_id_prop'
require 'openapi_client/models/chat_update'
require 'openapi_client/models/chats'
require 'openapi_client/models/clear_actions_queue_status'
require 'openapi_client/models/clear_messages_queue_status'
require 'openapi_client/models/create_group_action'
require 'openapi_client/models/create_group_status'
require 'openapi_client/models/forward_message_request'
require 'openapi_client/models/group_participant_action'
require 'openapi_client/models/group_participant_status'
require 'openapi_client/models/inline_response200'
require 'openapi_client/models/inline_response2001'
require 'openapi_client/models/inline_response2002'
require 'openapi_client/models/inline_response2003'
require 'openapi_client/models/inline_response2004'
require 'openapi_client/models/inline_response2005'
require 'openapi_client/models/inline_response2005_update'
require 'openapi_client/models/inline_response401'
require 'openapi_client/models/instance_status'
require 'openapi_client/models/instance_status_action'
require 'openapi_client/models/instance_status_link'
require 'openapi_client/models/instance_status_status_data'
require 'openapi_client/models/instance_status_status_data_actions'
require 'openapi_client/models/message'
require 'openapi_client/models/messages'
require 'openapi_client/models/outbound_action'
require 'openapi_client/models/outbound_actions'
require 'openapi_client/models/outbound_message'
require 'openapi_client/models/outbound_messages'
require 'openapi_client/models/phone_prop'
require 'openapi_client/models/read_chat_action'
require 'openapi_client/models/read_chat_status'
require 'openapi_client/models/send_contact_request'
require 'openapi_client/models/send_file_request'
require 'openapi_client/models/send_link_request'
require 'openapi_client/models/send_location_request'
require 'openapi_client/models/send_message_request'
require 'openapi_client/models/send_message_status'
require 'openapi_client/models/send_ptt_request'
require 'openapi_client/models/send_v_card_request'
require 'openapi_client/models/set_webhook_status'
require 'openapi_client/models/settings'
require 'openapi_client/models/status'
require 'openapi_client/models/statuses'
require 'openapi_client/models/webhook_status'
require 'openapi_client/models/webhook_url'

# APIs
require 'openapi_client/api/class1_instance_api'
require 'openapi_client/api/class2_messages_api'
require 'openapi_client/api/class3_chats_api'
require 'openapi_client/api/class4_webhooks_api'
require 'openapi_client/api/class5_queues_api'
require 'openapi_client/api/class6_ban_api'
require 'openapi_client/api/class7_testing_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
