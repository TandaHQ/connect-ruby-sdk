=begin
Square Connect API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::Country
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Country' do
  before do
    # run before each test
    @instance = SquareConnect::Country.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Country' do
    it 'should create an instact of Country' do
      @instance.should be_a(SquareConnect::Country) 
    end
  end
end

