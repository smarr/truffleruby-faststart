# frozen_string_literal: true

$LOAD_PATH.unshift "#{__dir__}/../liquid/lib"
require 'liquid'

class LiquidMiddleware < Benchmark

  def initialize
    @template = Liquid::Template.parse(<<LIQUID)
<ul id="products">
  {% for product in products %}
    <li>
      <h2>{{ product.name }}</h2>
      Only {{ product.price | price }}

      {{ product.description | prettyprint | paragraph }}
    </li>
  {% endfor %}
</ul>
LIQUID
  end

  def benchmark
    @template.render!('products' => [
      { 'name' => 'a', 'price' => 1.1, 'description' => 'desc a' },
      { 'name' => 'b', 'price' => 2.2, 'description' => 'desc b' },
      { 'name' => 'c', 'price' => 3.3, 'description' => 'desc c' }
    ])
  end
  
  def verify_result(result)
    expected = <<RESULT
<ul id=\"products\">
  
    <li>
      <h2>a</h2>
      Only 1.1

      desc a
    </li>
  
    <li>
      <h2>b</h2>
      Only 2.2

      desc b
    </li>
  
    <li>
      <h2>c</h2>
      Only 3.3

      desc c
    </li>
  
</ul>
RESULT

    result == expected
  end
end
