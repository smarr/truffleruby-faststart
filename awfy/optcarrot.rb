# frozen_string_literal: true

$LOAD_PATH.unshift "#{__dir__}/../optcarrot"
require 'lib/optcarrot'

class OptCarrot < Benchmark

  def initialize
    @rom = "#{__dir__}/../optcarrot/examples/Lan_Master.nes"
    @iteration = 0
  end

  def benchmark
    @nes.step
    @iteration += 1
  end

  def inner_benchmark_loop(inner_iterations)
    @nes = Optcarrot::NES.new ['--headless', @rom]
    @nes.reset
    @iteration = 0

    inner_iterations.times do
      return false unless verify_result(benchmark)
    end
    true
  end

  def verify_result(result)
    frame = @nes.instance_variable_get :@frame
    result == frame
  end
end
