class Local11 < Benchmark
  def benchmark
    cnt = 0
    l2 = 0
    l3 = 0
    l4 = 0
    l5 = 0
    l6 = 0
    l7 = 0
    l8 = 0
    l9 = 0
    l10 = 0
    l11 = 0

    while cnt < 50000
      cnt = cnt + 1
      l2 = l2 + 1
      l3 = l3 + 1
      l4 = l4 + 1
      l5 = l5 + 1
      l6 = l6 + 1
      l7 = l7 + 1
      l8 = l8 + 1
      l9 = l9 + 1
      l10 = l10 + 1
      l11 = l11 + 1
    end

    cnt
  end

  def verify_result(result)
    50000 == result
  end
end
