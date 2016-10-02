class SmallestMultiple
attr_accessor :lcm

  def initialize(input)
    @lcm = find_smallest_multiple(input)
  end

  def find_smallest_multiple(input)
    smallest_multiple = 1

      (2..input).each do |divisor|
        smallest_multiple *= divisor / gcd(smallest_multiple, divisor)
      end
    smallest_multiple
  end

  def gcd(smallest_multiple, divisor)
    while divisor > 0
      smallest_multiple %= divisor
      return divisor if smallest_multiple == 0
      divisor %= smallest_multiple
    end
    smallest_multiple
  end

end
