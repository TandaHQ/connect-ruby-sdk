=begin
#Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents a transaction processed with Square, either with the Connect API or with Square Register.  The `tenders` field of this object lists all methods of payment used to pay in the transaction.
  class Transaction
    # The transaction's unique ID, issued by Square payments servers.
    attr_accessor :id

    # The ID of the transaction's associated location.
    attr_accessor :location_id

    # The time when the transaction was created, in RFC 3339 format.
    attr_accessor :created_at

    # The tenders used to pay in the transaction.
    attr_accessor :tenders

    # Refunds that have been applied to any tender in the transaction.
    attr_accessor :refunds

    # If the transaction was created with the [Charge](#endpoint-charge) endpoint, this value is the same as the value provided for the `reference_id` parameter in the request to that endpoint. Otherwise, it is not set.
    attr_accessor :reference_id

    # The Square product that processed the transaction.
    attr_accessor :product

    # If the transaction was created in the Square Register app, this value is the ID generated for the transaction by Square Register.  This ID has no relationship to the transaction's canonical `id`, which is generated by Square's backend servers. This value is generated for bookkeeping purposes, in case the transaction cannot immediately be completed (for example, if the transaction is processed in offline mode).  It is not currently possible with the Connect API to perform a transaction lookup by this value.
    attr_accessor :client_id

    # The order associated with this transaction, if any.
    attr_accessor :order

    # The shipping address provided in the request, if any.
    attr_accessor :shipping_address

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'location_id' => :'location_id',
        :'created_at' => :'created_at',
        :'tenders' => :'tenders',
        :'refunds' => :'refunds',
        :'reference_id' => :'reference_id',
        :'product' => :'product',
        :'client_id' => :'client_id',
        :'order' => :'order',
        :'shipping_address' => :'shipping_address'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'location_id' => :'String',
        :'created_at' => :'String',
        :'tenders' => :'Array<Tender>',
        :'refunds' => :'Array<Refund>',
        :'reference_id' => :'String',
        :'product' => :'String',
        :'client_id' => :'String',
        :'order' => :'Order',
        :'shipping_address' => :'Address'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'tenders')
        if (value = attributes[:'tenders']).is_a?(Array)
          self.tenders = value
        end
      end

      if attributes.has_key?(:'refunds')
        if (value = attributes[:'refunds']).is_a?(Array)
          self.refunds = value
        end
      end

      if attributes.has_key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      product_validator = EnumAttributeValidator.new('String', ["REGISTER", "EXTERNAL_API", "BILLING", "APPOINTMENTS", "INVOICES", "ONLINE_STORE", "PAYROLL", "OTHER"])
      return false unless product_validator.valid?(@product)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product)
      validator = EnumAttributeValidator.new('String', ["REGISTER", "EXTERNAL_API", "BILLING", "APPOINTMENTS", "INVOICES", "ONLINE_STORE", "PAYROLL", "OTHER"])
      unless validator.valid?(product)
        fail ArgumentError, "invalid value for 'product', must be one of #{validator.allowable_values}."
      end
      @product = product
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          location_id == o.location_id &&
          created_at == o.created_at &&
          tenders == o.tenders &&
          refunds == o.refunds &&
          reference_id == o.reference_id &&
          product == o.product &&
          client_id == o.client_id &&
          order == o.order &&
          shipping_address == o.shipping_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, location_id, created_at, tenders, refunds, reference_id, product, client_id, order, shipping_address].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SquareConnect.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
