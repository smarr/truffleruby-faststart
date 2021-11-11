class Dispatch10 < Benchmark
  def benchmark
    cnt = 0
    
    while cnt < 50000
      cnt = cnt + method(
          1, 1, 1, 1, 1,
          1, 1, 1, 1, 1)
    end
    cnt
  end

  def method(a1, a2, a3, a4, a5, a6, a7, a8, a9, b)
    1
  end

  def verify_result(result)
    50000 == result
  end
end
