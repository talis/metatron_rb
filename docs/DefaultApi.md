# MetatronClient::DefaultApi

All URIs are relative to *https://bibliography.talis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**2_assets_asset_type_asset_id_delete**](DefaultApi.md#2_assets_asset_type_asset_id_delete) | **DELETE** /2/assets/{assetType}/{assetId} | 
[**2_manifestations_get**](DefaultApi.md#2_manifestations_get) | **GET** /2/manifestations | 
[**2_manifestations_manifestation_id_assets_get**](DefaultApi.md#2_manifestations_manifestation_id_assets_get) | **GET** /2/manifestations/{manifestationId}/assets | 
[**2_manifestations_manifestation_id_assets_post**](DefaultApi.md#2_manifestations_manifestation_id_assets_post) | **POST** /2/manifestations/{manifestationId}/assets | 
[**2_manifestations_manifestation_id_get**](DefaultApi.md#2_manifestations_manifestation_id_get) | **GET** /2/manifestations/{manifestationId} | 
[**2_manifestations_manifestation_id_items_tenant_code_get**](DefaultApi.md#2_manifestations_manifestation_id_items_tenant_code_get) | **GET** /2/manifestations/{manifestationId}/items/{tenantCode} | 
[**2_manifestations_manifestation_id_works_get**](DefaultApi.md#2_manifestations_manifestation_id_works_get) | **GET** /2/manifestations/{manifestationId}/works | 
[**2_works_get**](DefaultApi.md#2_works_get) | **GET** /2/works | 
[**2_works_work_id_assets_get**](DefaultApi.md#2_works_work_id_assets_get) | **GET** /2/works/{workId}/assets | 
[**2_works_work_id_manifestations_get**](DefaultApi.md#2_works_work_id_manifestations_get) | **GET** /2/works/{workId}/manifestations | 
[**2_works_work_id_similar_get**](DefaultApi.md#2_works_work_id_similar_get) | **GET** /2/works/{workId}/similar | 


# **2_assets_asset_type_asset_id_delete**
> 2_assets_asset_type_asset_id_delete(asset_id, asset_type, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

asset_id = "asset_id_example" # String | 

asset_type = "asset_type_example" # String | 

authorization = "authorization_example" # String | 


begin
  api_instance.2_assets_asset_type_asset_id_delete(asset_id, asset_type, authorization)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_assets_asset_type_asset_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**|  | 
 **asset_type** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json, application/json



# **2_manifestations_get**
> ManifestationResultSet 2_manifestations_get(authorization, opts)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

authorization = "authorization_example" # String | 

opts = { 
  work_id: "work_id_example", # String | 
  isbn: "isbn_example" # String | 
}

begin
  result = api_instance.2_manifestations_get(authorization, opts)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **work_id** | **String**|  | [optional] 
 **isbn** | **String**|  | [optional] 

### Return type

[**ManifestationResultSet**](ManifestationResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json, application/json



# **2_manifestations_manifestation_id_assets_get**
> AssetResultSet 2_manifestations_manifestation_id_assets_get(manifestation_id, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 

authorization = "authorization_example" # String | 


begin
  result = api_instance.2_manifestations_manifestation_id_assets_get(manifestation_id, authorization)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_assets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

[**AssetResultSet**](AssetResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json, application/json



# **2_manifestations_manifestation_id_assets_post**
> Asset 2_manifestations_manifestation_id_assets_post(manifestation_id, authorization, asset)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 

authorization = "authorization_example" # String | 

asset = MetatronClient::Asset.new # Asset | 


begin
  result = api_instance.2_manifestations_manifestation_id_assets_post(manifestation_id, authorization, asset)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_assets_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 
 **authorization** | **String**|  | 
 **asset** | [**Asset**](Asset.md)|  | 

### Return type

[**Asset**](Asset.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json, application/json
 - **Accept**: application/vnd.api+json, application/json



# **2_manifestations_manifestation_id_get**
> 2_manifestations_manifestation_id_get(manifestation_id, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 

authorization = "authorization_example" # String | 


begin
  api_instance.2_manifestations_manifestation_id_get(manifestation_id, authorization)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **2_manifestations_manifestation_id_items_tenant_code_get**
> ItemResultSet 2_manifestations_manifestation_id_items_tenant_code_get(manifestation_id, authorization, tenant_code)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 

authorization = "authorization_example" # String | 

tenant_code = "tenant_code_example" # String | 


begin
  result = api_instance.2_manifestations_manifestation_id_items_tenant_code_get(manifestation_id, authorization, tenant_code)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_items_tenant_code_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 
 **authorization** | **String**|  | 
 **tenant_code** | **String**|  | 

### Return type

[**ItemResultSet**](ItemResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **2_manifestations_manifestation_id_works_get**
> 2_manifestations_manifestation_id_works_get(manifestation_id, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 

authorization = "authorization_example" # String | 


begin
  api_instance.2_manifestations_manifestation_id_works_get(manifestation_id, authorization)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_manifestations_manifestation_id_works_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifestation_id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **2_works_get**
> WorkResultSet 2_works_get(limit, offset, q, authorization, opts)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

limit = "limit_example" # String | 

offset = "offset_example" # String | 

q = "q_example" # String | 

authorization = "authorization_example" # String | 

opts = { 
  include: "include_example" # String | 
}

begin
  result = api_instance.2_works_get(limit, offset, q, authorization, opts)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**|  | 
 **offset** | **String**|  | 
 **q** | **String**|  | 
 **authorization** | **String**|  | 
 **include** | **String**|  | [optional] 

### Return type

[**WorkResultSet**](WorkResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json, application/json



# **2_works_work_id_assets_get**
> AssetResultSet 2_works_work_id_assets_get(work_id, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

work_id = "work_id_example" # String | 

authorization = "authorization_example" # String | 


begin
  result = api_instance.2_works_work_id_assets_get(work_id, authorization)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_work_id_assets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

[**AssetResultSet**](AssetResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json, application/json



# **2_works_work_id_manifestations_get**
> 2_works_work_id_manifestations_get(work_id, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

work_id = "work_id_example" # String | 

authorization = "authorization_example" # String | 


begin
  api_instance.2_works_work_id_manifestations_get(work_id, authorization)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_work_id_manifestations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **2_works_work_id_similar_get**
> WorkResultSet 2_works_work_id_similar_get(work_id, authorization)



### Example
```ruby
# load the gem
require 'metatron_ruby_client'
# setup authorization 
MetatronClient.configure do |config|
  # Configure API key authorization: Authorizer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'BEARER'
end

api_instance = MetatronClient::DefaultApi.new

work_id = "work_id_example" # String | 

authorization = "authorization_example" # String | 


begin
  result = api_instance.2_works_work_id_similar_get(work_id, authorization)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->2_works_work_id_similar_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

[**WorkResultSet**](WorkResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



