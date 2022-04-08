# frozen_string_literal: true
require_relative 'som'

$LOAD_PATH.unshift "#{__dir__}/../liquid"
require 'performance/shopify/liquid'
require 'performance/tests/sm-de/data'

class LiquidRenderBibs < Benchmark

  def initialize
    @template = Liquid::Template.new.parse(File.read("#{__dir__}/../liquid/performance/tests/sm-de/papers.liquid"))

    @result = File.read("#{__dir__}/../liquid/performance/tests/sm-de/result.html")

    @data = {'papers'=> get_bib_data}
  end

  def benchmark
    @template.render!(@data)
  end

  def verify_result(result)
    result == @result
  end
end
