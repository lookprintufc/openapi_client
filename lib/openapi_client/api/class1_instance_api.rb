=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module OpenapiClient
  class Class1InstanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Repeat the manual synchronization attempt with the device
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2003]
    def call_retry(opts = {})
      data, _status_code, _headers = call_retry_with_http_info(opts)
      data
    end

    # Repeat the manual synchronization attempt with the device
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def call_retry_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.call_retry ...'
      end
      # resource path
      local_var_path = '/retry'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2003' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#call_retry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the QR code after its expired
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def expiry(opts = {})
      data, _status_code, _headers = expiry_with_http_info(opts)
      data
    end

    # Updates the QR code after its expired
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def expiry_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.expiry ...'
      end
      # resource path
      local_var_path = '/expiry'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2002' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#expiry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Direct link to QR-code in the form of an image, not base64.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_qr_code(opts = {})
      data, _status_code, _headers = get_qr_code_with_http_info(opts)
      data
    end

    # Direct link to QR-code in the form of an image, not base64.
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_qr_code_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.get_qr_code ...'
      end
      # resource path
      local_var_path = '/qr_code'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#get_qr_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get settings
    # **webhookUrl** - Http or https URL for receiving notifications. For testing, we recommend using [our RequestBin](http://bin.chat-api.com).  **ackNotificationsOn** - Turn on/off ack (message delivered and message viewed) notifications in webhooks. GET method works for the same address.  **chatUpdateOn** - Turn on/off chat update notifications in webhooks. GET method works for the same address.  **videoUploadOn** - Turn on/off receiving video messages.  **proxy** - Socks5 IP address and port proxy for instance.  **guaranteedHooks** - Guarantee webhook delivery. Each webhook will make 20 attempts to send until it receives 200 status from the server.  **ignoreOldMessages** - Do not send webhooks with old messages during authorization.  **processArchive** - Process messages from archived chats.  **instanceStatuses** - Turn on/off collecting instance status changing history.  **webhookStatuses** - Turn on/off collecting messages webhooks statuses.  **statusNotificationsOn** - Turn on/off instance changind status notifications in webhooks.
    # @param [Hash] opts the optional parameters
    # @return [Settings]
    def get_settings(opts = {})
      data, _status_code, _headers = get_settings_with_http_info(opts)
      data
    end

    # Get settings
    # **webhookUrl** - Http or https URL for receiving notifications. For testing, we recommend using [our RequestBin](http://bin.chat-api.com).  **ackNotificationsOn** - Turn on/off ack (message delivered and message viewed) notifications in webhooks. GET method works for the same address.  **chatUpdateOn** - Turn on/off chat update notifications in webhooks. GET method works for the same address.  **videoUploadOn** - Turn on/off receiving video messages.  **proxy** - Socks5 IP address and port proxy for instance.  **guaranteedHooks** - Guarantee webhook delivery. Each webhook will make 20 attempts to send until it receives 200 status from the server.  **ignoreOldMessages** - Do not send webhooks with old messages during authorization.  **processArchive** - Process messages from archived chats.  **instanceStatuses** - Turn on/off collecting instance status changing history.  **webhookStatuses** - Turn on/off collecting messages webhooks statuses.  **statusNotificationsOn** - Turn on/off instance changind status notifications in webhooks.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Settings, Integer, Hash)>] Settings data, response status code and response headers
    def get_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.get_settings ...'
      end
      # resource path
      local_var_path = '/settings'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Settings' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the account status and QR code for authorization.
    # Reauthorization is necessary only in case of changing the device or manually pressing \"Logout on all devices\" on the phone. Keep the WhastsApp application open during authorization.  Instance statuses:  **authenticated** -  Authorization passed successfully  **init** -  Initial status   **loading** -  The system is still loading, try again in 1 minute   **got qr code** -  There is a QR code and you need to take a picture of it in the Whatsapp application by going to Menu -> WhatsApp Web -> Add. QR code is valid for one minute.   [Example showing base64 images on a page.](https://stackoverflow.com/questions/31526085/how-to-encode-an-image-into-an-html-file)  Manually easier to get [QR-code as an image](/#getQRCode)    When you request the status of the instance in standby mode (status **\"init\"**), it will automatically turn on. To avoid this behavior, use the **no_wakeup** parameter
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :full Get full information on the current status (default to false)
    # @option opts [Boolean] :no_wakeup Ignore autowakeup (default to false)
    # @return [InstanceStatus]
    def get_status(opts = {})
      data, _status_code, _headers = get_status_with_http_info(opts)
      data
    end

    # Get the account status and QR code for authorization.
    # Reauthorization is necessary only in case of changing the device or manually pressing \&quot;Logout on all devices\&quot; on the phone. Keep the WhastsApp application open during authorization.  Instance statuses:  **authenticated** -  Authorization passed successfully  **init** -  Initial status   **loading** -  The system is still loading, try again in 1 minute   **got qr code** -  There is a QR code and you need to take a picture of it in the Whatsapp application by going to Menu -&gt; WhatsApp Web -&gt; Add. QR code is valid for one minute.   [Example showing base64 images on a page.](https://stackoverflow.com/questions/31526085/how-to-encode-an-image-into-an-html-file)  Manually easier to get [QR-code as an image](/#getQRCode)    When you request the status of the instance in standby mode (status **\&quot;init\&quot;**), it will automatically turn on. To avoid this behavior, use the **no_wakeup** parameter
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :full Get full information on the current status
    # @option opts [Boolean] :no_wakeup Ignore autowakeup
    # @return [Array<(InstanceStatus, Integer, Hash)>] InstanceStatus data, response status code and response headers
    def get_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.get_status ...'
      end
      # resource path
      local_var_path = '/status'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'full'] = opts[:'full'] if !opts[:'full'].nil?
      query_params[:'no_wakeup'] = opts[:'no_wakeup'] if !opts[:'no_wakeup'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InstanceStatus' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#get_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Logout from WhatsApp Web to get new QR code.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def logout(opts = {})
      data, _status_code, _headers = logout_with_http_info(opts)
      data
    end

    # Logout from WhatsApp Web to get new QR code.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def logout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.logout ...'
      end
      # resource path
      local_var_path = '/logout'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse200' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reboot your whatsapp instance.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def reboot(opts = {})
      data, _status_code, _headers = reboot_with_http_info(opts)
      data
    end

    # Reboot your whatsapp instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def reboot_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.reboot ...'
      end
      # resource path
      local_var_path = '/reboot'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2004' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#reboot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set settings
    # **webhookUrl** - Http or https URL for receiving notifications. For testing, we recommend using [our RequestBin](http://bin.chat-api.com).  **ackNotificationsOn** - Turn on/off ack (message delivered and message viewed) notifications in webhooks. GET method works for the same address.  **chatUpdateOn** - Turn on/off chat update notifications in webhooks. GET method works for the same address.  **videoUploadOn** - Turn on/off receiving video messages.  **proxy** - Socks5 IP address and port proxy for instance.  **guaranteedHooks** - Guarantee webhook delivery. Each webhook will make 20 attempts to send until it receives 200 status from the server.  **ignoreOldMessages** - Do not send webhooks with old messages during authorization.  **processArchive** - Process messages from archived chats.  **instanceStatuses** - Turn on/off collecting instance status changing history.  **webhookStatuses** - Turn on/off collecting messages webhooks statuses.  **statusNotificationsOn** - Turn on/off instance changind status notifications in webhooks.
    # @param settings [Settings] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2005]
    def set_settings(settings, opts = {})
      data, _status_code, _headers = set_settings_with_http_info(settings, opts)
      data
    end

    # Set settings
    # **webhookUrl** - Http or https URL for receiving notifications. For testing, we recommend using [our RequestBin](http://bin.chat-api.com).  **ackNotificationsOn** - Turn on/off ack (message delivered and message viewed) notifications in webhooks. GET method works for the same address.  **chatUpdateOn** - Turn on/off chat update notifications in webhooks. GET method works for the same address.  **videoUploadOn** - Turn on/off receiving video messages.  **proxy** - Socks5 IP address and port proxy for instance.  **guaranteedHooks** - Guarantee webhook delivery. Each webhook will make 20 attempts to send until it receives 200 status from the server.  **ignoreOldMessages** - Do not send webhooks with old messages during authorization.  **processArchive** - Process messages from archived chats.  **instanceStatuses** - Turn on/off collecting instance status changing history.  **webhookStatuses** - Turn on/off collecting messages webhooks statuses.  **statusNotificationsOn** - Turn on/off instance changind status notifications in webhooks.
    # @param settings [Settings] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def set_settings_with_http_info(settings, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.set_settings ...'
      end
      # verify the required parameter 'settings' is set
      if @api_client.config.client_side_validation && settings.nil?
        fail ArgumentError, "Missing the required parameter 'settings' when calling Class1InstanceApi.set_settings"
      end
      # resource path
      local_var_path = "/instance#{opts[:auth_names][:instanceId]}/settings"

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(settings) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2005' 

      # auth_names
      auth_names = opts[:auth_names] || ['token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#set_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the active session if the device has connected another instance of Web WhatsApp
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def takeover(opts = {})
      data, _status_code, _headers = takeover_with_http_info(opts)
      data
    end

    # Returns the active session if the device has connected another instance of Web WhatsApp
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def takeover_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class1InstanceApi.takeover ...'
      end
      # resource path
      local_var_path = '/takeover'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2001' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class1InstanceApi#takeover\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
