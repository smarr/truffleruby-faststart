class ArrayAccess4 < Benchmark
  def benchmark
    arr = Array.new(20)
    arr[0] = 0
    arr[1] = 0
    arr[2] = 0
    arr[3] = 0

    while arr[0] < 50000
      arr[0] = arr[0] + 1
      arr[1] = arr[1] + 1
      arr[2] = arr[2] + 1
      arr[3] = arr[3] + 1
    end

    arr[0]
  end

  def verify_result(result)
    50000 == result
  end
end
