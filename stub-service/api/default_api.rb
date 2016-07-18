require 'json'


MyApp.add_route('DELETE', '/2/assets/{assetType}/{assetId}', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_assets_asset_type_asset_id_delete", 
  "responseClass" => "void", 
  "endpoint" => "/2/assets/{assetType}/{assetId}", 
  "notes" => "",
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
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_manifestations_get", 
  "responseClass" => "ManifestationResultSet", 
  "endpoint" => "/2/manifestations", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "isbn",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}/assets', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_manifestations_manifestation_id_assets_get", 
  "responseClass" => "AssetResultSet", 
  "endpoint" => "/2/manifestations/{manifestationId}/assets", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/2/manifestations/{manifestationId}/assets', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_manifestations_manifestation_id_assets_post", 
  "responseClass" => "Asset", 
  "endpoint" => "/2/manifestations/{manifestationId}/assets", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    {
      "name" => "body",
      "description" => "",
      "dataType" => "Asset",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_manifestations_manifestation_id_get", 
  "responseClass" => "void", 
  "endpoint" => "/2/manifestations/{manifestationId}", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}/items/{tenantCode}', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_manifestations_manifestation_id_items_tenant_code_get", 
  "responseClass" => "ItemResultSet", 
  "endpoint" => "/2/manifestations/{manifestationId}/items/{tenantCode}", 
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
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/manifestations/{manifestationId}/works', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_manifestations_manifestation_id_works_get", 
  "responseClass" => "void", 
  "endpoint" => "/2/manifestations/{manifestationId}/works", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "manifestation_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_works_get", 
  "responseClass" => "WorkResultSet", 
  "endpoint" => "/2/works", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "limit",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "include",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "offset",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "q",
      "description" => "",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works/{workId}/assets', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_works_work_id_assets_get", 
  "responseClass" => "AssetResultSet", 
  "endpoint" => "/2/works/{workId}/assets", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works/{workId}/manifestations', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_works_work_id_manifestations_get", 
  "responseClass" => "void", 
  "endpoint" => "/2/works/{workId}/manifestations", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/2/works/{workId}/similar', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "2_works_work_id_similar_get", 
  "responseClass" => "WorkResultSet", 
  "endpoint" => "/2/works/{workId}/similar", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "work_id",
      "description" => "",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "authorization",
      "description" => "",
      "dataType" => "string",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

