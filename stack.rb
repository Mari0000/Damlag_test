require 'benchmark'

class Stack 
  def initialize
    @store = Array.new      
  end

  def push(element)
    @store.push(element) 
  end

  def pop
    return "Error: no data found" if @store.empty?
    @store.pop
  end 
  
  def size
    @store.size
  end 

  def max
    return puts "Error: no data found" if @store.empty?
    @store.max
  end 
end 

class Extras < Stack
  def mean 
    return puts "Error: no data found" if @store.empty?
    @store.sum.to_f / @store.size
  end 
end 

store = Extras.new
10000000.times do 
  store.push(Random.rand(1..100))
end 

time1 = Benchmark.measure {
  puts "Max: "+store.max.to_s
}
puts "Max Time "+time1.real.to_s

time2 = Benchmark.measure {
  puts "Mean: "+store.mean.to_s
}
puts "Mean Time "+time2.real.to_s
