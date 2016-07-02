class PerfectNumber

  def self.classify(input)
    raise RuntimeError if input <= 0 
    
    factors = []

    input.times do |i|
      next if i == 0
      factors << i if input % i == 0
    end

    total = factors.inject(:+)

    if factors.length <= 1 || ( total == input && factors.length == 1 )
      "deficient"
    elsif total == input
      "perfect"
    elsif total
      "abundant"
    end
  end

end