class Person

  @@keys = []

  def initialize(infohash)
    @@keys << infohash.keys
    self.class.accessors
    infohash.each do |key, val|
      self.send("#{key}=", val)
    end
  end

  def self.accessors
    @@keys.last.each{|key| attr_accessor key.to_sym}
  end

  #your code here
end
