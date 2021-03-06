=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # 
  class CreateOrderRequest
    # A value you specify that uniquely identifies this order among orders you've created.  If you're unsure whether a particular order was created successfully, you can reattempt it with the same idempotency key without worrying about creating duplicate orders.  See [Idempotency keys](#idempotencykeys) for more information.
    attr_accessor :idempotency_key

    # An optional ID you can associate with the order for your own purposes (such as to associate the order with an entity ID in your own database).  This value cannot exceed 40 characters.
    attr_accessor :reference_id

    # The line items to associate with this order.  Each line item represents a different product to include in a purchase.
    attr_accessor :line_items

    # The taxes to include on the order.
    attr_accessor :taxes

    # The discounts to include on the order.
    attr_accessor :discounts


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'idempotency_key' => :'idempotency_key',
        :'reference_id' => :'reference_id',
        :'line_items' => :'line_items',
        :'taxes' => :'taxes',
        :'discounts' => :'discounts'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'idempotency_key' => :'String',
        :'reference_id' => :'String',
        :'line_items' => :'Array<CreateOrderRequestLineItem>',
        :'taxes' => :'Array<CreateOrderRequestTax>',
        :'discounts' => :'Array<CreateOrderRequestDiscount>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'idempotency_key')
        self.idempotency_key = attributes[:'idempotency_key']
      end

      if attributes.has_key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.has_key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'discounts')
        if (value = attributes[:'discounts']).is_a?(Array)
          self.discounts = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@idempotency_key.nil? && @idempotency_key.to_s.length > 192
        invalid_properties.push("invalid value for 'idempotency_key', the character length must be smaller than or equal to 192.")
      end

      if !@reference_id.nil? && @reference_id.to_s.length > 40
        invalid_properties.push("invalid value for 'reference_id', the character length must be smaller than or equal to 40.")
      end

      if @line_items.nil?
        invalid_properties.push("invalid value for 'line_items', line_items cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@idempotency_key.nil? && @idempotency_key.to_s.length > 192
      return false if !@reference_id.nil? && @reference_id.to_s.length > 40
      return false if @line_items.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] idempotency_key Value to be assigned
    def idempotency_key=(idempotency_key)

      if !idempotency_key.nil? && idempotency_key.to_s.length > 192
        fail ArgumentError, "invalid value for 'idempotency_key', the character length must be smaller than or equal to 192."
      end

      @idempotency_key = idempotency_key
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_id Value to be assigned
    def reference_id=(reference_id)

      if !reference_id.nil? && reference_id.to_s.length > 40
        fail ArgumentError, "invalid value for 'reference_id', the character length must be smaller than or equal to 40."
      end

      @reference_id = reference_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          idempotency_key == o.idempotency_key &&
          reference_id == o.reference_id &&
          line_items == o.line_items &&
          taxes == o.taxes &&
          discounts == o.discounts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [idempotency_key, reference_id, line_items, taxes, discounts].hash
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
