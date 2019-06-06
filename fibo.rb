#Recursive Solution
def recursive_fib(number)
  number < 2 ? number : recursive_fib(number-1) + recursive_fib(number-2)
end
puts recursive_fib(35)
#Iterative Solution

def iterative_fib(num)

  fib1 = 0
  fib2 = 1

  num.times do
    temp = fib1
    fib1 = fib2
    fib2 = temp + fib2
  end

  return fib1

end
35.times do |num|
result = iterative_fib(num)
puts result
end


require 'benchmark'
num = 35
Benchmark.bm do |x|
  #x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
