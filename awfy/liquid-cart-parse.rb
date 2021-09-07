# frozen_string_literal: true
require_relative 'som'

$LOAD_PATH.unshift "#{__dir__}/../liquid"
require 'performance/shopify/liquid'


class LiquidCartParse < Benchmark

  def initialize
    @random = Random.new
    @cart_template_source = File.read("#{__dir__}/../liquid/performance/tests/dropify/cart.liquid")
    @input = '0'
  end

  def benchmark
    @input = (@random.next % 999).to_s
    Liquid::Template.new.parse(@cart_template_source + @input)
  end

  def verify_result(result)
    nodes = result.root.nodelist
    nodes.size == 3 and nodes[2] == "\n\n</div>\n" + @input
  end
end
