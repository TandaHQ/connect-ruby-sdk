=begin
#Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class LocationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # ListLocations
    # Provides the details for all of a business's locations.  Most other Connect API endpoints have a required `location_id` path parameter. The `id` field of the [`Location`](#type-location) objects returned by this endpoint correspond to that `location_id` parameter.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [ListLocationsResponse]
    def list_locations(authorization, opts = {})
      data, _status_code, _headers = list_locations_with_http_info(authorization, opts)
      return data
    end

    # ListLocations
    # Provides the details for all of a business&#39;s locations.  Most other Connect API endpoints have a required &#x60;location_id&#x60; path parameter. The &#x60;id&#x60; field of the [&#x60;Location&#x60;](#type-location) objects returned by this endpoint correspond to that &#x60;location_id&#x60; parameter.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListLocationsResponse, Fixnum, Hash)>] ListLocationsResponse data, response status code and response headers
    def list_locations_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationApi.list_locations ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling LocationApi.list_locations" if authorization.nil?
      # resource path
      local_var_path = "/v2/locations".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListLocationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#list_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
