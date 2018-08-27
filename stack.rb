class Stack 
  def initialize
    @store = Array.new      
  end

  def push(element)
    @store.push(element) 
  end

  def pop
    @store.pop
  end 
  
  def size
    @store.size
  end 

  def max
    @store.max
  end 
end 

class Extras < Stack
  def mean 
    @store.inject{ |sum, el| sum + el }.to_f / @store.size
  end 
end 

s = Extras.new
10000000.times do 
  s.push(Random.rand(1..100))
end 
puts s.max
puts s.mean
