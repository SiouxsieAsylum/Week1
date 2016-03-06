class Temperature
  def initialize(temps = {})
    @temps = temps
  end

  def self.from_fahrenheit(num)
    self.new(:f => num)
  end

  def self.from_celsius(num)
    self.new(:c => num)
  end

  def in_fahrenheit
    return @temps[:f] if @temps.has_key?(:f)
    if @temps.has_key?(:c)
      (@temps[:c] * 9.0/5.0) + 32
    end
  end

  def in_celsius
    return @temps[:c] if @temps.has_key?(:c)
    if @temps.has_key?(:f)
      (@temps[:f] - 32)*(5.0/9.0)
    end
  end
end

class Celsius < Temperature
  def initialize(num)
    super(:c => num)
  end
end

class Fahrenheit < Temperature
  def initialize(num)
    super(:f => num)
  end
end
