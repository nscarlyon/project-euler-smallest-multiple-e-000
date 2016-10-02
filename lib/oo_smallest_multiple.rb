class SmallestMultiple
attr_accessor :input, :LCM

  def initialize(input)
    @input = input
    @LCM = 0
  end

  def lcm
    counter = 1
    meets_divisibility = 0

    while meets_divisibility < @input
      (1...self.input).each do |n|
        remainder = counter % n
        meets_divisibility +=1 if remainder == 0
        meets_divisibility = 0 if remainder != 0
        @LCM = counter if meets_divisibility == @input
        break if remainder != 0
      end
      counter+=1
    end
    @LCM
  end

end
