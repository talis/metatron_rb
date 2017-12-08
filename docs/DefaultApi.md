# MetatronClient::DefaultApi

All URIs are relative to *https://bibliography.talis.com/2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assets_asset_type_asset_id_delete**](DefaultApi.md#assets_asset_type_asset_id_delete) | **DELETE** /assets/{assetType}/{assetId} | 
[**assets_asset_type_asset_id_get**](DefaultApi.md#assets_asset_type_asset_id_get) | **GET** /assets/{assetType}/{assetId} | 
[**assets_asset_type_asset_id_options**](DefaultApi.md#assets_asset_type_asset_id_options) | **OPTIONS** /assets/{assetType}/{assetId} | 
[**manifestations_get**](DefaultApi.md#manifestations_get) | **GET** /manifestations | 
[**manifestations_manifestation_id_assets_get**](DefaultApi.md#manifestations_manifestation_id_assets_get) | **GET** /manifestations/{manifestationId}/assets | 
[**manifestations_manifestation_id_assets_options**](DefaultApi.md#manifestations_manifestation_id_assets_options) | **OPTIONS** /manifestations/{manifestationId}/assets | 
[**manifestations_manifestation_id_assets_post**](DefaultApi.md#manifestations_manifestation_id_assets_post) | **POST** /manifestations/{manifestationId}/assets | 
[**manifestations_options**](DefaultApi.md#manifestations_options) | **OPTIONS** /manifestations | 
[**works_get**](DefaultApi.md#works_get) | **GET** /works | 
[**works_options**](DefaultApi.md#works_options) | **OPTIONS** /works | 
[**works_work_id_assets_get**](DefaultApi.md#works_work_id_assets_get) | **GET** /works/{workId}/assets | 
[**works_work_id_assets_options**](DefaultApi.md#works_work_id_assets_options) | **OPTIONS** /works/{workId}/assets | 


# **assets_asset_type_asset_id_delete**
> assets_asset_type_asset_id_delete(asset_id, asset_type)



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
  api_instance.assets_asset_type_asset_id_delete(asset_id, asset_type)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->assets_asset_type_asset_id_delete: #{e}"
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



# **assets_asset_type_asset_id_get**
> assets_asset_type_asset_id_get(asset_id, asset_type)



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
  api_instance.assets_asset_type_asset_id_get(asset_id, asset_type)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->assets_asset_type_asset_id_get: #{e}"
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



# **assets_asset_type_asset_id_options**
> assets_asset_type_asset_id_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.assets_asset_type_asset_id_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->assets_asset_type_asset_id_options: #{e}"
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



# **manifestations_get**
> manifestations_get



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
  api_instance.manifestations_get
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->manifestations_get: #{e}"
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



# **manifestations_manifestation_id_assets_get**
> manifestations_manifestation_id_assets_get(manifestation_id)



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
  api_instance.manifestations_manifestation_id_assets_get(manifestation_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->manifestations_manifestation_id_assets_get: #{e}"
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



# **manifestations_manifestation_id_assets_options**
> manifestations_manifestation_id_assets_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.manifestations_manifestation_id_assets_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->manifestations_manifestation_id_assets_options: #{e}"
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



# **manifestations_manifestation_id_assets_post**
> manifestations_manifestation_id_assets_post(manifestation_id)



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
  api_instance.manifestations_manifestation_id_assets_post(manifestation_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->manifestations_manifestation_id_assets_post: #{e}"
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



# **manifestations_options**
> manifestations_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.manifestations_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->manifestations_options: #{e}"
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



# **works_get**
> works_get



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
  api_instance.works_get
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->works_get: #{e}"
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



# **works_options**
> works_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.works_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->works_options: #{e}"
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



# **works_work_id_assets_get**
> works_work_id_assets_get(work_id)



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
  api_instance.works_work_id_assets_get(work_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->works_work_id_assets_get: #{e}"
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



# **works_work_id_assets_options**
> works_work_id_assets_options



### Example
```ruby
# load the gem
require 'metatron_ruby_client'

api_instance = MetatronClient::DefaultApi.new

begin
  api_instance.works_work_id_assets_options
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->works_work_id_assets_options: #{e}"
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



