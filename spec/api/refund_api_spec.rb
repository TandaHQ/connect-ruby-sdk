=begin
Square Connect API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SquareConnect::RefundApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RefundApi' do
  before do
    # run before each test
    @instance = SquareConnect::RefundApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RefundApi' do
    it 'should create an instact of RefundApi' do
      @instance.should be_a(SquareConnect::RefundApi)
    end
  end

  # unit tests for create_refund
  # CreateRefund
  # Initiates a refund for a previously charged tender.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param location_id The ID of the original transaction&#39;s associated location.
  # @param transaction_id The ID of the original transaction that includes the tender to refund.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [CreateRefundResponse]
  describe 'create_refund test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for list_refunds
  # ListRefunds
  # Lists refunds for one of a business&#39;s locations.  Refunds with a &#x60;status&#x60; of &#x60;PENDING&#x60; are not currently included in this endpoint&#39;s response.  Max results per [page](#paginatingresults): 50
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param location_id The ID of the location to list refunds for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :begin_time The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year.
  # @option opts [String] :end_time The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time.
  # @option opts [String] :sort_order The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60;
  # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
  # @return [ListRefundsResponse]
  describe 'list_refunds test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
