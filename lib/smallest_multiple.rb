def smallest_multiple(input)
  counter = 1
  lcm = 0

  (1...input).each do |n|
    remainder = counter % n
    lcm = counter if remainder == 0
    return false if remainder != 0
  end
  
  lcm
end
