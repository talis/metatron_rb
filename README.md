# metatron_ruby_client

MetatronClient - the Ruby gem for the Metatron Server

A primitive modelling bibliographic metadata

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.0
- Package version: 0.0.1
- Build date: 2016-07-08T13:16:21.801-04:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build metatron_ruby_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./metatron_ruby_client-0.0.1.gem
```
(for development, run `gem install --dev ./metatron_ruby_client-0.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'metatron_ruby_client', '~> 0.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/talis/metatron_rb, then add the following in the Gemfile:

    gem 'metatron_ruby_client', :git => 'https://github.com/talis/metatron_rb.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'metatron_ruby_client'

# Setup authorization
MetatronClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = MetatronClient::DefaultApi.new

manifestation_id = "manifestation_id_example" # String | 

body = MetatronClient::Asset.new # Asset | node


begin
  result = api_instance.add_manifestation_asset(manifestation_idbody)
  p result
rescue MetatronClient::ApiError => e
  puts "Exception when calling DefaultApi->add_manifestation_asset: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000/2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MetatronClient::DefaultApi* | [**add_manifestation_asset**](docs/DefaultApi.md#add_manifestation_asset) | **POST** /manifestations/{manifestationId}/assets | 
*MetatronClient::DefaultApi* | [**get_holdings**](docs/DefaultApi.md#get_holdings) | **GET** /manifestations/{manifestationId}/items/{tenantCode} | Get local holdings for a given manifestation
*MetatronClient::DefaultApi* | [**get_manifestation**](docs/DefaultApi.md#get_manifestation) | **GET** /manifestations/{manifestationId} | Get a specific Manifestation from the dataset
*MetatronClient::DefaultApi* | [**get_manifestation_assets**](docs/DefaultApi.md#get_manifestation_assets) | **GET** /manifestations/{manifestationId}/assets | Get a set of Assets that are associated with a specific Manifestation
*MetatronClient::DefaultApi* | [**get_manifestation_works**](docs/DefaultApi.md#get_manifestation_works) | **GET** /manifestations/{manifestationId}/works | Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.
*MetatronClient::DefaultApi* | [**get_work**](docs/DefaultApi.md#get_work) | **GET** /works/{workId}/similar | Get a set of Works that are similar to a specific Work
*MetatronClient::DefaultApi* | [**get_work_assets**](docs/DefaultApi.md#get_work_assets) | **GET** /works/{workId}/assets | Get a set of Assets that are associated with a specific Work
*MetatronClient::DefaultApi* | [**get_work_manifestations**](docs/DefaultApi.md#get_work_manifestations) | **GET** /works/{workId}/manifestations | Get a set of Manifestations that encompass a specific Work
*MetatronClient::DefaultApi* | [**manifestation**](docs/DefaultApi.md#manifestation) | **GET** /manifestations | 
*MetatronClient::DefaultApi* | [**remove_asset**](docs/DefaultApi.md#remove_asset) | **DELETE** /assets/{assetType}/{assetId} | 
*MetatronClient::DefaultApi* | [**work**](docs/DefaultApi.md#work) | **GET** /works | Get the work best matching the given bibliographic data


## Documentation for Models

 - [MetatronClient::Asset](docs/Asset.md)
 - [MetatronClient::AssetData](docs/AssetData.md)
 - [MetatronClient::AssetMeta](docs/AssetMeta.md)
 - [MetatronClient::AssetResultSet](docs/AssetResultSet.md)
 - [MetatronClient::Error](docs/Error.md)
 - [MetatronClient::Errors](docs/Errors.md)
 - [MetatronClient::Item](docs/Item.md)
 - [MetatronClient::ItemData](docs/ItemData.md)
 - [MetatronClient::ItemResultSet](docs/ItemResultSet.md)
 - [MetatronClient::Links](docs/Links.md)
 - [MetatronClient::Manifestation](docs/Manifestation.md)
 - [MetatronClient::ManifestationAttributes](docs/ManifestationAttributes.md)
 - [MetatronClient::ManifestationData](docs/ManifestationData.md)
 - [MetatronClient::ManifestationRelationships](docs/ManifestationRelationships.md)
 - [MetatronClient::ManifestationResultSet](docs/ManifestationResultSet.md)
 - [MetatronClient::OneToManyRelationship](docs/OneToManyRelationship.md)
 - [MetatronClient::OneToOneRelationship](docs/OneToOneRelationship.md)
 - [MetatronClient::ResourceData](docs/ResourceData.md)
 - [MetatronClient::ResourceLink](docs/ResourceLink.md)
 - [MetatronClient::ResultSetMeta](docs/ResultSetMeta.md)
 - [MetatronClient::Work](docs/Work.md)
 - [MetatronClient::WorkAttributes](docs/WorkAttributes.md)
 - [MetatronClient::WorkData](docs/WorkData.md)
 - [MetatronClient::WorkRelationships](docs/WorkRelationships.md)
 - [MetatronClient::WorkResultSet](docs/WorkResultSet.md)


## Documentation for Authorization


### oauth2

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - su: Talis super user
  - metatron:read: Read only access
  - metatron:write: Write only access

