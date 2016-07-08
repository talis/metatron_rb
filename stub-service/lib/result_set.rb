class ResultSet < Hash
  def self.load(filename)
    self[YAML.load_file filename]
  end

  def include(filename)
    include = YAML.load_file filename
    if include['include']
     include "#{Dir.pwd}/responses/#{include['include']}.yaml"
    end
    if include['resources']
      self['included'] ||= []
      include['resources'].each do |resource|
        self['included'] << resource
      end
    end

    if include['relationships']
      include['relationships'].each do |rel|
        %w(data included).each {|key| hydrate_relationships key, rel }
      end
    end
  end

  def hydrate_relationships(key, rel)
    self[key].each do |resource|
      if resource['id'] == rel['id'] && resource['type'] == rel['type']
        resource['relationships'] ||= {}
        resource['relationships'][rel['relationship']] ||= { 'data' => [] }
        rel['relationships'].each do |r|
          resource['relationships'][rel['relationship']]['data'] << r
        end
      end
    end
  end

end