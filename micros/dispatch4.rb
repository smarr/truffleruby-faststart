class Dispatch4 < Benchmark
  def benchmark
    cnt = 0
    
    while cnt < 50000
      nil.nil?
      cnt = cnt + method(
          1, 1, 1, 1)
    end
    cnt
  end

  def method(a1, a2, a3, b)
    1
  end

  def verify_result(result)
    50000 == result
  end
end
