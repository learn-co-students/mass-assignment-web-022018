class Person

  @@keys = []

  def initialize(argument)
    @@keys << argument.keys
    self.class.accessors
    argument.each {|k,v| self.send("#{k}=", v)}
  end

  def self.accessors
    @@keys.last.each {|k| attr_accessor k.to_sym}
  end

end
