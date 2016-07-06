=begin
Metatron Server

A primitive modelling bibliographic metadata

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for MetatronClient::DefaultApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @instance = MetatronClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instact of DefaultApi' do
      @instance.should be_a(MetatronClient::DefaultApi)
    end
  end

  # unit tests for add_manifestation_asset
  # 
  # Add an asset to the relevant manifestation
  # @param manifestation_id 
  # @param body node
  # @param [Hash] opts the optional parameters
  # @return [Asset]
  describe 'add_manifestation_asset test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_holdings
  # Get local holdings for a given manifestation
  # 
  # @param manifestation_id 
  # @param tenant_code 
  # @param [Hash] opts the optional parameters
  # @return [ItemResultSet]
  describe 'get_holdings test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_manifestation
  # Get a specific Manifestation from the dataset
  # 
  # @param manifestation_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_manifestation test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_manifestation_assets
  # Get a set of Assets that are associated with a specific Manifestation
  # 
  # @param manifestation_id 
  # @param [Hash] opts the optional parameters
  # @return [AssetResultSet]
  describe 'get_manifestation_assets test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_manifestation_works
  # Get a set of Works relating to a given Manifestation. Usually there will be one current work, but due to previous titles there might be more than one Work.
  # 
  # @param manifestation_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_manifestation_works test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_work
  # Get a set of Works that are similar to a specific Work
  # 
  # @param work_id 
  # @param [Hash] opts the optional parameters
  # @return [WorkResultSet]
  describe 'get_work test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_work_assets
  # Get a set of Assets that are associated with a specific Work
  # 
  # @param work_id 
  # @param [Hash] opts the optional parameters
  # @return [AssetResultSet]
  describe 'get_work_assets test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_work_manifestations
  # Get a set of Manifestations that encompass a specific Work
  # 
  # @param work_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_work_manifestations test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for manifestation
  # 
  # Get the manifestation set best matching the given bibliographic data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :isbn The isbn
  # @option opts [String] :work_id The ID of a work
  # @return [ManifestationResultSet]
  describe 'manifestation test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for remove_asset
  # 
  # Remove an asset
  # @param asset_id 
  # @param asset_type 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_asset test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for work
  # Get the work best matching the given bibliographic data
  # 
  # @param q Search works for the supplied term
  # @param limit Limit the results to n results
  # @param offset Offset the results to position n
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :include Define which relationships to include, comma separated
  # @return [WorkResultSet]
  describe 'work test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
