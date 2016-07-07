class ResultSet < Hash
  def self.load(filename)
    self[YAML.load_file filename]
  end

  def include(filename)
    include = YAML.load_file filename
    if include['resources']
      self['included']= []
      include['resources'].each do |resource|
        self['included'] << resource
      end
    end
    puts self['meta'].inspect
    if include['relationships']
      include['relationships'].each do |rel|
        self['data'].each do |resource|
          if resource['id'] == rel['id'] && resource['type'] == rel['type']
            resource['relationships'] ||= {}
            resource['relationships'][rel['relationship']] ||= []
            rel['relationships'].each do |r|
              resource['relationships'][rel['relationship']] << r
            end
          end
        end
      end
    end
  end

end