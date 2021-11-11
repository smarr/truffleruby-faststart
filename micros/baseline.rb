class Baseline < Benchmark
  def benchmark
    cnt = 0
    
    while cnt < 50000
      cnt = cnt + 1
    end

    cnt
  end

  def verify_result(result)
    50000 == result
  end
end
