# MetatronClient::DefaultApi

All URIs are relative to *http://localhost:3000/2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_manifestation_asset**](DefaultApi.md#add_manifestation_asset) | **POST** /manifestations/{manifestationId}/assets | 
[**get_holdings**](DefaultApi.md#get_holdings) | **GET** /manifestations/{manifestationId}/items/{tenantCode} | Get local holdings for a given manifestation
[**get_manifestation**](DefaultApi.md#get_manifestation) | **GET** /manifestations/{manifestationId} | Get a specific Manifestation from the dataset
[**get_manifestation_assets**](DefaultApi.md#get_manifestation_assets) | **GET** /manifestations/{manifestationId}/assets | Get a set of Assets that are associated with a specific Manifestation
[**get_manifestation_works**](DefaultApi.md#get_manifestation_works) | **GET** /manifestations/{manifestationId}/works | Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.
[**get_work**](DefaultApi.md#get_work) | **GET** /works/{workId}/similar | Get a set of Works that are similar to a specific Work
[**get_work_assets**](DefaultApi.md#get_work_assets) | **GET** /works/{workId}/assets | Get a set of Assets that are associated with a specific Work
[**get_work_manifestations**](DefaultApi.md#get_work_manifestations) | **GET** /works/{workId}/manifestations | Get a set of Manifestations that encompass a specific Work
[**manifestation**](DefaultApi.md#manifestation) | **GET** /manifestations | 
[**remove_asset**](DefaultApi.md#remove_asset) | **DELETE** /assets/{assetType}/{assetId} | 
[**work**](DefaultApi.md#work) | **GET** /works | Get the work best matching the given bibliographic data


# **add_manifestation_asset**
> Asset add_manifestation_asset(authorization, manifestation_idbody)



Add an asset to the relevant manifestation

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

authorization = "authorization_example" # String | Bearer token

manifestation_id = "manifestation_id_example" # String | 

body = MetatronClient::Asset.new # Asset | node


begin
  result = api_instance.add_manifestation_asset(authorization, manifestation_idbody)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->add_manifestation_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **manifestation_id** | **String**|  | 
 **body** | [**Asset**](Asset.md)| node | 

### Return type

[**Asset**](Asset.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_holdings**
> ItemResultSet get_holdings(authorization, manifestation_idtenant_code)

Get local holdings for a given manifestation

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

authorization = "authorization_example" # String | Bearer token

manifestation_id = "manifestation_id_example" # String | 

tenant_code = "tenant_code_example" # String | 


begin
  #Get local holdings for a given manifestation
  result = api_instance.get_holdings(authorization, manifestation_idtenant_code)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_holdings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **manifestation_id** | **String**|  | 
 **tenant_code** | **String**|  | 

### Return type

[**ItemResultSet**](ItemResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_manifestation**
> get_manifestation(authorization, manifestation_id)

Get a specific Manifestation from the dataset

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

authorization = "authorization_example" # String | Bearer token

manifestation_id = "manifestation_id_example" # String | 


begin
  #Get a specific Manifestation from the dataset
  api_instance.get_manifestation(authorization, manifestation_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_manifestation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **manifestation_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_manifestation_assets**
> AssetResultSet get_manifestation_assets(authorization, manifestation_id)

Get a set of Assets that are associated with a specific Manifestation

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

authorization = "authorization_example" # String | Bearer token

manifestation_id = "manifestation_id_example" # String | 


begin
  #Get a set of Assets that are associated with a specific Manifestation
  result = api_instance.get_manifestation_assets(authorization, manifestation_id)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_manifestation_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **manifestation_id** | **String**|  | 

### Return type

[**AssetResultSet**](AssetResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_manifestation_works**
> get_manifestation_works(authorization, manifestation_id)

Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.

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

authorization = "authorization_example" # String | Bearer token

manifestation_id = "manifestation_id_example" # String | 


begin
  #Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.
  api_instance.get_manifestation_works(authorization, manifestation_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_manifestation_works: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **manifestation_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_work**
> WorkResultSet get_work(authorization, work_id)

Get a set of Works that are similar to a specific Work

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

authorization = "authorization_example" # String | Bearer token

work_id = "work_id_example" # String | 


begin
  #Get a set of Works that are similar to a specific Work
  result = api_instance.get_work(authorization, work_id)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_work: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **work_id** | **String**|  | 

### Return type

[**WorkResultSet**](WorkResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_work_assets**
> AssetResultSet get_work_assets(authorization, work_id)

Get a set of Assets that are associated with a specific Work

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

authorization = "authorization_example" # String | Bearer token

work_id = "work_id_example" # String | 


begin
  #Get a set of Assets that are associated with a specific Work
  result = api_instance.get_work_assets(authorization, work_id)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_work_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **work_id** | **String**|  | 

### Return type

[**AssetResultSet**](AssetResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **get_work_manifestations**
> get_work_manifestations(authorization, work_id)

Get a set of Manifestations that encompass a specific Work

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

authorization = "authorization_example" # String | Bearer token

work_id = "work_id_example" # String | 


begin
  #Get a set of Manifestations that encompass a specific Work
  api_instance.get_work_manifestations(authorization, work_id)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->get_work_manifestations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **work_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **manifestation**
> ManifestationResultSet manifestation(authorization, , opts)



Get the manifestation set best matching the given bibliographic data

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

authorization = "authorization_example" # String | Bearer token

opts = { 
  isbn: "isbn_example", # String | The isbn
  work_id: "work_id_example" # String | The ID of a work
}

begin
  result = api_instance.manifestation(authorization, , opts)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->manifestation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **isbn** | **String**| The isbn | [optional] 
 **work_id** | **String**| The ID of a work | [optional] 

### Return type

[**ManifestationResultSet**](ManifestationResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **remove_asset**
> remove_asset(authorization, asset_id, asset_type)



Remove an asset

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

authorization = "authorization_example" # String | Bearer token

asset_id = "asset_id_example" # String | 

asset_type = "asset_type_example" # String | 


begin
  api_instance.remove_asset(authorization, asset_id, asset_type)
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->remove_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **asset_id** | **String**|  | 
 **asset_type** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



# **work**
> WorkResultSet work(authorization, q, limit, offset, opts)

Get the work best matching the given bibliographic data

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

authorization = "authorization_example" # String | Bearer token

q = "q_example" # String | Search works for the supplied term

limit = "limit_example" # String | Limit the results to n results

offset = "offset_example" # String | Offset the results to position n

opts = { 
  include: ["include_example"] # Array<String> | Define which relationships to include, comma separated
}

begin
  #Get the work best matching the given bibliographic data
  result = api_instance.work(authorization, q, limit, offset, opts)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->work: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token | 
 **q** | **String**| Search works for the supplied term | 
 **limit** | **String**| Limit the results to n results | 
 **offset** | **String**| Offset the results to position n | 
 **include** | [**Array&lt;String&gt;**](String.md)| Define which relationships to include, comma separated | [optional] 

### Return type

[**WorkResultSet**](WorkResultSet.md)

### Authorization

[Authorizer](../README.md#Authorizer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.api+json



