class SumService
  def self.call(a, b)
    raise ArgumentError unless a.is_a?(Numeric) && b.is_a?(Numeric)
    a + b
  end
end
