require 'json'
require 'yaml'

MyApp.add_route('POST', '/2/manifestations/{manifestationId}/assets', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "add_manifestation_asset", 
  "responseClass" => "Asset", 
  "endpoint" => "/manifestations/{manifestationId}/assets", 
  "notes" => "Add an asset to the relevant manifestation",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "body",
      "description" => "node",
      "dataType" => "Asset",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}/items/{tenantCode}', {
  "resourcePath" => "/Default",
  "summary" => "Get local holdings for a given manifestation",
  "nickname" => "get_holdings", 
  "responseClass" => "ItemResultSet", 
  "endpoint" => "/manifestations/{manifestationId}/items/{tenantCode}", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "tenant_code",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}', {
  "resourcePath" => "/Default",
  "summary" => "Get a specific Manifestation from the dataset",
  "nickname" => "get_manifestation", 
  "responseClass" => "void", 
  "endpoint" => "/manifestations/{manifestationId}", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}/assets', {
  "resourcePath" => "/Default",
  "summary" => "Get a set of Assets that are associated with a specific Manifestation",
  "nickname" => "get_manifestation_assets", 
  "responseClass" => "AssetResultSet", 
  "endpoint" => "/manifestations/{manifestationId}/assets", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}/works', {
  "resourcePath" => "/Default",
  "summary" => "Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.",
  "nickname" => "get_manifestation_works", 
  "responseClass" => "void", 
  "endpoint" => "/manifestations/{manifestationId}/works", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works/{workId}/similar', {
  "resourcePath" => "/Default",
  "summary" => "Get a set of Works that are similar to a specific Work",
  "nickname" => "get_work", 
  "responseClass" => "WorkResultSet", 
  "endpoint" => "/works/{workId}/similar", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works/{workId}/assets', {
  "resourcePath" => "/Default",
  "summary" => "Get a set of Assets that are associated with a specific Work",
  "nickname" => "get_work_assets", 
  "responseClass" => "AssetResultSet", 
  "endpoint" => "/works/{workId}/assets", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works/{workId}/manifestations', {
  "resourcePath" => "/Default",
  "summary" => "Get a set of Manifestations that encompass a specific Work",
  "nickname" => "get_work_manifestations", 
  "responseClass" => "void", 
  "endpoint" => "/works/{workId}/manifestations", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "manifestation", 
  "responseClass" => "ManifestationResultSet", 
  "endpoint" => "/manifestations", 
  "notes" => "Get the manifestation set best matching the given bibliographic data",
  "parameters" => [
    {
      "name" => "isbn",
      "description" => "The isbn",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "work_id",
      "description" => "The ID of a work",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('DELETE', '/2/assets/{assetType}/{assetId}', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "remove_asset", 
  "responseClass" => "void", 
  "endpoint" => "/assets/{assetType}/{assetId}", 
  "notes" => "Remove an asset",
  "parameters" => [
    {
      "name" => "asset_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "asset_type",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works', {
  "resourcePath" => "/Default",
  "summary" => "Get the work best matching the given bibliographic data",
  "nickname" => "work", 
  "responseClass" => "WorkResultSet", 
  "endpoint" => "/works", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "q",
      "description" => "Search works for the supplied term",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "limit",
      "description" => "Limit the results to n results",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "offset",
      "description" => "Offset the results to position n",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "include",
      "description" => "Define which relationships to include, comma separated",
      "dataType" => "array[string]",
      "paramType" => "query",
      "collectionFormat" => "csv",
      "allowableValues" => "",
      
    },
    ]}) do
  cross_origin
  # the guts live here

  content_type('application/vnd.api+json')
  response = ResultSet.load Dir.pwd + '/responses/works/result_set.yaml'
  if params['include']
    params['include'].split(',').each do |include|
      file = Dir.pwd + "/responses/works/includes/#{include}.yaml"
      response.include file if File.exists? file
    end
  end

  response.to_json
end

