class ArrayAccess11 < Benchmark
  def benchmark
    arr = Array.new(20)
    arr[0] = 0
    arr[1] = 0
    arr[2] = 0
    arr[3] = 0
    arr[4] = 0
    arr[5] = 0
    arr[6] = 0
    arr[7] = 0
    arr[8] = 0
    arr[9] = 0
    arr[10] = 0

    while arr[0] < 50000
      arr[0] = arr[0] + 1
      arr[1] = arr[1] + 1
      arr[2] = arr[2] + 1
      arr[3] = arr[3] + 1
      arr[4] = arr[4] + 1
      arr[5] = arr[5] + 1
      arr[6] = arr[6] + 1
      arr[7] = arr[7] + 1
      arr[8] = arr[8] + 1
      arr[9] = arr[9] + 1
      arr[10] = arr[10] + 1
    end

    arr[0]
  end

  def verify_result(result)
    50000 == result
  end
end
