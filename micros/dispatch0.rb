class Dispatch0 < Benchmark
  def benchmark
    cnt = 0
    
    while cnt < 50000
      cnt = cnt + method
    end
    cnt
  end

  def method()
    1
  end

  def verify_result(result)
    50000 == result
  end
end
