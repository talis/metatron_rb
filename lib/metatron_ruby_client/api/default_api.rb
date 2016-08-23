=begin
Metatron Server

A primitive modelling bibliographic metadata

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module MetatronClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Add an asset to the relevant manifestation
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param body node
    # @param [Hash] opts the optional parameters
    # @return [Asset]
    def add_manifestation_asset(authorization, manifestation_id, body, opts = {})
      data, _status_code, _headers = add_manifestation_asset_with_http_info(authorization, manifestation_id, body, opts)
      return data
    end

    # 
    # Add an asset to the relevant manifestation
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param body node
    # @param [Hash] opts the optional parameters
    # @return [Array<(Asset, Fixnum, Hash)>] Asset data, response status code and response headers
    def add_manifestation_asset_with_http_info(authorization, manifestation_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.add_manifestation_asset ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.add_manifestation_asset" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'manifestation_id' is set
      fail ArgumentError, "Missing the required parameter 'manifestation_id' when calling DefaultApi.add_manifestation_asset" if manifestation_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling DefaultApi.add_manifestation_asset" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/manifestations/{manifestationId}/assets".sub('{format}','json').sub('{' + 'manifestationId' + '}', manifestation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Asset')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#add_manifestation_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get local holdings for a given manifestation
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param tenant_code 
    # @param [Hash] opts the optional parameters
    # @return [ItemResultSet]
    def get_holdings(authorization, manifestation_id, tenant_code, opts = {})
      data, _status_code, _headers = get_holdings_with_http_info(authorization, manifestation_id, tenant_code, opts)
      return data
    end

    # Get local holdings for a given manifestation
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param tenant_code 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ItemResultSet, Fixnum, Hash)>] ItemResultSet data, response status code and response headers
    def get_holdings_with_http_info(authorization, manifestation_id, tenant_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_holdings ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_holdings" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'manifestation_id' is set
      fail ArgumentError, "Missing the required parameter 'manifestation_id' when calling DefaultApi.get_holdings" if manifestation_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'tenant_code' is set
      fail ArgumentError, "Missing the required parameter 'tenant_code' when calling DefaultApi.get_holdings" if tenant_code.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/manifestations/{manifestationId}/items/{tenantCode}".sub('{format}','json').sub('{' + 'manifestationId' + '}', manifestation_id.to_s).sub('{' + 'tenantCode' + '}', tenant_code.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ItemResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_holdings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific Manifestation from the dataset
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_manifestation(authorization, manifestation_id, opts = {})
      get_manifestation_with_http_info(authorization, manifestation_id, opts)
      return nil
    end

    # Get a specific Manifestation from the dataset
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_manifestation_with_http_info(authorization, manifestation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_manifestation ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_manifestation" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'manifestation_id' is set
      fail ArgumentError, "Missing the required parameter 'manifestation_id' when calling DefaultApi.get_manifestation" if manifestation_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/manifestations/{manifestationId}".sub('{format}','json').sub('{' + 'manifestationId' + '}', manifestation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_manifestation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a set of Assets that are associated with a specific Manifestation
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param [Hash] opts the optional parameters
    # @return [AssetResultSet]
    def get_manifestation_assets(authorization, manifestation_id, opts = {})
      data, _status_code, _headers = get_manifestation_assets_with_http_info(authorization, manifestation_id, opts)
      return data
    end

    # Get a set of Assets that are associated with a specific Manifestation
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetResultSet, Fixnum, Hash)>] AssetResultSet data, response status code and response headers
    def get_manifestation_assets_with_http_info(authorization, manifestation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_manifestation_assets ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_manifestation_assets" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'manifestation_id' is set
      fail ArgumentError, "Missing the required parameter 'manifestation_id' when calling DefaultApi.get_manifestation_assets" if manifestation_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/manifestations/{manifestationId}/assets".sub('{format}','json').sub('{' + 'manifestationId' + '}', manifestation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_manifestation_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_manifestation_works(authorization, manifestation_id, opts = {})
      get_manifestation_works_with_http_info(authorization, manifestation_id, opts)
      return nil
    end

    # Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.
    # 
    # @param authorization Bearer token
    # @param manifestation_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_manifestation_works_with_http_info(authorization, manifestation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_manifestation_works ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_manifestation_works" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'manifestation_id' is set
      fail ArgumentError, "Missing the required parameter 'manifestation_id' when calling DefaultApi.get_manifestation_works" if manifestation_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/manifestations/{manifestationId}/works".sub('{format}','json').sub('{' + 'manifestationId' + '}', manifestation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_manifestation_works\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a set of Works that are similar to a specific Work
    # 
    # @param authorization Bearer token
    # @param work_id 
    # @param [Hash] opts the optional parameters
    # @return [WorkResultSet]
    def get_work(authorization, work_id, opts = {})
      data, _status_code, _headers = get_work_with_http_info(authorization, work_id, opts)
      return data
    end

    # Get a set of Works that are similar to a specific Work
    # 
    # @param authorization Bearer token
    # @param work_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkResultSet, Fixnum, Hash)>] WorkResultSet data, response status code and response headers
    def get_work_with_http_info(authorization, work_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_work ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_work" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'work_id' is set
      fail ArgumentError, "Missing the required parameter 'work_id' when calling DefaultApi.get_work" if work_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/works/{workId}/similar".sub('{format}','json').sub('{' + 'workId' + '}', work_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_work\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a set of Assets that are associated with a specific Work
    # 
    # @param authorization Bearer token
    # @param work_id 
    # @param [Hash] opts the optional parameters
    # @return [AssetResultSet]
    def get_work_assets(authorization, work_id, opts = {})
      data, _status_code, _headers = get_work_assets_with_http_info(authorization, work_id, opts)
      return data
    end

    # Get a set of Assets that are associated with a specific Work
    # 
    # @param authorization Bearer token
    # @param work_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssetResultSet, Fixnum, Hash)>] AssetResultSet data, response status code and response headers
    def get_work_assets_with_http_info(authorization, work_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_work_assets ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_work_assets" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'work_id' is set
      fail ArgumentError, "Missing the required parameter 'work_id' when calling DefaultApi.get_work_assets" if work_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/works/{workId}/assets".sub('{format}','json').sub('{' + 'workId' + '}', work_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_work_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a set of Manifestations that encompass a specific Work
    # 
    # @param authorization Bearer token
    # @param work_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_work_manifestations(authorization, work_id, opts = {})
      get_work_manifestations_with_http_info(authorization, work_id, opts)
      return nil
    end

    # Get a set of Manifestations that encompass a specific Work
    # 
    # @param authorization Bearer token
    # @param work_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_work_manifestations_with_http_info(authorization, work_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_work_manifestations ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.get_work_manifestations" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'work_id' is set
      fail ArgumentError, "Missing the required parameter 'work_id' when calling DefaultApi.get_work_manifestations" if work_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/works/{workId}/manifestations".sub('{format}','json').sub('{' + 'workId' + '}', work_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_work_manifestations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the manifestation set best matching the given bibliographic data
    # @param authorization Bearer token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :isbn The isbn
    # @option opts [String] :work_id The ID of a work
    # @return [ManifestationResultSet]
    def manifestation(authorization, opts = {})
      data, _status_code, _headers = manifestation_with_http_info(authorization, opts)
      return data
    end

    # 
    # Get the manifestation set best matching the given bibliographic data
    # @param authorization Bearer token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :isbn The isbn
    # @option opts [String] :work_id The ID of a work
    # @return [Array<(ManifestationResultSet, Fixnum, Hash)>] ManifestationResultSet data, response status code and response headers
    def manifestation_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.manifestation ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.manifestation" if authorization.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/manifestations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'isbn'] = opts[:'isbn'] if opts[:'isbn']
      query_params[:'work_id'] = opts[:'work_id'] if opts[:'work_id']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManifestationResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#manifestation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Remove an asset
    # @param authorization Bearer token
    # @param asset_id 
    # @param asset_type 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_asset(authorization, asset_id, asset_type, opts = {})
      remove_asset_with_http_info(authorization, asset_id, asset_type, opts)
      return nil
    end

    # 
    # Remove an asset
    # @param authorization Bearer token
    # @param asset_id 
    # @param asset_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_asset_with_http_info(authorization, asset_id, asset_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.remove_asset ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.remove_asset" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'asset_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_id' when calling DefaultApi.remove_asset" if asset_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling DefaultApi.remove_asset" if asset_type.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/assets/{assetType}/{assetId}".sub('{format}','json').sub('{' + 'assetId' + '}', asset_id.to_s).sub('{' + 'assetType' + '}', asset_type.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#remove_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the work best matching the given bibliographic data
    # 
    # @param authorization Bearer token
    # @param q Search works for the supplied term
    # @param limit Limit the results to n results
    # @param offset Offset the results to position n
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :include Define which relationships to include, comma separated
    # @return [WorkResultSet]
    def work(authorization, q, limit, offset, opts = {})
      data, _status_code, _headers = work_with_http_info(authorization, q, limit, offset, opts)
      return data
    end

    # Get the work best matching the given bibliographic data
    # 
    # @param authorization Bearer token
    # @param q Search works for the supplied term
    # @param limit Limit the results to n results
    # @param offset Offset the results to position n
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :include Define which relationships to include, comma separated
    # @return [Array<(WorkResultSet, Fixnum, Hash)>] WorkResultSet data, response status code and response headers
    def work_with_http_info(authorization, q, limit, offset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.work ..."
      end
      
      
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling DefaultApi.work" if authorization.nil?
      
      
      
      
      
      
      # verify the required parameter 'q' is set
      fail ArgumentError, "Missing the required parameter 'q' when calling DefaultApi.work" if q.nil?
      
      
      
      
      
      
      # verify the required parameter 'limit' is set
      fail ArgumentError, "Missing the required parameter 'limit' when calling DefaultApi.work" if limit.nil?
      
      
      
      
      
      
      # verify the required parameter 'offset' is set
      fail ArgumentError, "Missing the required parameter 'offset' when calling DefaultApi.work" if offset.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/works".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'q'] = q
      query_params[:'limit'] = limit
      query_params[:'offset'] = offset
      query_params[:'include'] = @api_client.build_collection_param(opts[:'include'], :csv) if opts[:'include']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/vnd.api+json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['Authorizer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkResultSet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#work\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
