# MetatronClient::DefaultApi

All URIs are relative to *https://bibliography.talis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**2_assets_asset_type_asset_id_delete**](DefaultApi.md#2_assets_asset_type_asset_id_delete) | **DELETE** /2/assets/{assetType}/{assetId} | 
[**2_assets_asset_type_asset_id_get**](DefaultApi.md#2_assets_asset_type_asset_id_get) | **GET** /2/assets/{assetType}/{assetId} | 
[**2_assets_asset_type_asset_id_options**](DefaultApi.md#2_assets_asset_type_asset_id_options) | **OPTIONS** /2/assets/{assetType}/{assetId} | 
[**2_manifestations_get**](DefaultApi.md#2_manifestations_get) | **GET** /2/manifestations | 
[**2_manifestations_manifestation_id_assets_get**](DefaultApi.md#2_manifestations_manifestation_id_assets_get) | **GET** /2/manifestations/{manifestationId}/assets | 
[**2_manifestations_manifestation_id_assets_options**](DefaultApi.md#2_manifestations_manifestation_id_assets_options) | **OPTIONS** /2/manifestations/{manifestationId}/assets | 
[**2_manifestations_manifestation_id_assets_post**](DefaultApi.md#2_manifestations_manifestation_id_assets_post) | **POST** /2/manifestations/{manifestationId}/assets | 
[**2_manifestations_options**](DefaultApi.md#2_manifestations_options) | **OPTIONS** /2/manifestations | 
[**2_works_get**](DefaultApi.md#2_works_get) | **GET** /2/works | 
[**2_works_options**](DefaultApi.md#2_works_options) | **OPTIONS** /2/works | 
[**2_works_work_id_assets_get**](DefaultApi.md#2_works_work_id_assets_get) | **GET** /2/works/{workId}/assets | 
[**2_works_work_id_assets_options**](DefaultApi.md#2_works_work_id_assets_options) | **OPTIONS** /2/works/{workId}/assets | 


# **2_assets_asset_type_asset_id_delete**
> 2_assets_asset_type_asset_id_delete(asset_id, asset_type)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

asset_id = "asset_id_example" # String | 

asset_type = "asset_type_example" # String | 


begin
  api_instance.2_assets_asset_type_asset_id_delete(asset_id, asset_type)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_assets_asset_type_asset_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**|  | 
 **asset_type** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_assets_asset_type_asset_id_get**
> 2_assets_asset_type_asset_id_get(asset_id, asset_type)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

asset_id = "asset_id_example" # String | 

asset_type = "asset_type_example" # String | 


begin
  api_instance.2_assets_asset_type_asset_id_get(asset_id, asset_type)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_assets_asset_type_asset_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**|  | 
 **asset_type** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_assets_asset_type_asset_id_options**
> 2_assets_asset_type_asset_id_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_assets_asset_type_asset_id_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_assets_asset_type_asset_id_options: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **2_manifestations_get**
> 2_manifestations_get



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_manifestations_get
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_manifestations_manifestation_id_assets_get**
> 2_manifestations_manifestation_id_assets_get(manifestation_id)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 


begin
  api_instance.2_manifestations_manifestation_id_assets_get(manifestation_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_assets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_manifestations_manifestation_id_assets_options**
> 2_manifestations_manifestation_id_assets_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_manifestations_manifestation_id_assets_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_assets_options: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **2_manifestations_manifestation_id_assets_post**
> 2_manifestations_manifestation_id_assets_post(manifestation_id)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 


begin
  api_instance.2_manifestations_manifestation_id_assets_post(manifestation_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_assets_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_manifestations_options**
> 2_manifestations_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_manifestations_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_options: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **2_works_get**
> 2_works_get



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_works_get
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_works_options**
> 2_works_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_works_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_options: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **2_works_work_id_assets_get**
> 2_works_work_id_assets_get(work_id)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: authorizerFunction
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

work_id = "work_id_example" # String | 


begin
  api_instance.2_works_work_id_assets_get(work_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_work_id_assets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[authorizerFunction](../README.md#authorizerFunction)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **2_works_work_id_assets_options**
> 2_works_work_id_assets_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.2_works_work_id_assets_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_work_id_assets_options: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



