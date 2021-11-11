class Local5 < Benchmark
  def benchmark
    cnt = 0
    l2 = 0
    l3 = 0
    l4 = 0
    l5 = 0

    while cnt < 50000
      cnt = cnt + 1
      l2 = l2 + 1
      l3 = l3 + 1
      l4 = l4 + 1
      l5 = l5 + 1
    end

    cnt
  end

  def verify_result(result)
    50000 == result
  end
end
