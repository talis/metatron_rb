=begin
Metatron Server

A primitive modelling bibliographic metadata

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module SwaggerClient
  class Manifestation
    attr_accessor :id

    attr_accessor :type

    attr_accessor :attributes

    attr_accessor :relationships

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'type' => :'type',
        
        :'attributes' => :'attributes',
        
        :'relationships' => :'relationships'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'attributes' => :'ManifestationAttributes',
        :'relationships' => :'ManifestationRelationships'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
      if attributes[:'attributes']
        self.attributes = attributes[:'attributes']
      end
      
      if attributes[:'relationships']
        self.relationships = attributes[:'relationships']
      end
      
    end

    # Custom attribute writer method checking allowed values (enum).
    def type=(type)
      allowed_values = ["manifestations"]
      if type && !allowed_values.include?(type)
        fail "invalid value for 'type', must be one of #{allowed_values}"
      end
      @type = type
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          attributes == o.attributes &&
          relationships == o.relationships
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [id, type, attributes, relationships].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = SwaggerClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
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
