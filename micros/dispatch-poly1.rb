class C1
  def method
    1
  end
end

class C2
  def method
    1
  end
end

class C3
  def method
    1
  end
end

class C4
  def method
    1
  end
end

class C5
  def method
    1
  end
end

class C6
  def method
    1
  end
end

class C7
  def method
    1
  end
end

class C8
  def method
    1
  end
end

class C9
  def method
    1
  end
end

class C10
  def method
    1
  end
end

class C11
  def method
    1
  end
end

objects = [
  C1.new, C2.new, C3.new, C4.new, C5.new, C6.new,
  C7.new, C8.new, C9.new, C10.new, C11.new
]

MIXED = Array.new(50000) { |i| objects[i % 1] }

class DispatchPoly1 < Benchmark
  def benchmark
    cnt = 0
    
    while cnt < 50000
      cnt = cnt + MIXED[cnt].method
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
