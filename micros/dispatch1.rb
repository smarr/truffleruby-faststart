class Dispatch1 < Benchmark
  def benchmark
    cnt = 0
    
    while cnt < 50000
      cnt = cnt + method(1)
    end
    cnt
  end

  def method(argument)
    1
  end

  def verify_result(result)
    50000 == result
  end
end
