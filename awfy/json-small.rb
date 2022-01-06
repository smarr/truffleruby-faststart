# frozen_string_literal: true

# This code is derived from the SOM benchmarks, see AUTHORS.md file.
# This benchmark is based on the minimal-json Java library maintained at:
# https://github.com/ralfstx/minimal-json
#
# Copyright (c) 2015-2016 Stefan Marr <git@stefan-marr.de>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require_relative 'som'

RAP_BENCHMARK_MINIFIED = '{"head":{"requestCounter":4},"operations":[["destroy","w54"],["set","w2",{"activeControl":"w99"}],["set","w21",{"customVariant":"variant_navigation"}],["set","w28",{"customVariant":"variant_selected"}],["set","w53",{"children":["w95"]}],["create","w95","rwt.widgets.Composite",{"parent":"w53","style":["NONE"],"bounds":[0,0,1008,586],"children":["w96","w97"],"tabIndex":-1,"clientArea":[0,0,1008,586]}],["create","w96","rwt.widgets.Label",{"parent":"w95","style":["NONE"],"bounds":[10,30,112,26],"tabIndex":-1,"customVariant":"variant_pageHeadline","text":"TableViewer"}],["create","w97","rwt.widgets.Composite",{"parent":"w95","style":["NONE"],"bounds":[0,61,1008,525],"children":["w98","w99","w226","w228"],"tabIndex":-1,"clientArea":[0,0,1008,525]}],["create","w98","rwt.widgets.Text",{"parent":"w97","style":["LEFT","SINGLE","BORDER"],"bounds":[10,10,988,32],"tabIndex":22,"activeKeys":["#13","#27","#40"]}],["listen","w98",{"KeyDown":true,"Modify":true}],["create","w99","rwt.widgets.Grid",{"parent":"w97","style":["SINGLE","BORDER"],"appearance":"table","indentionWidth":0,"treeColumn":-1,"markupEnabled":false}],["create","w100","rwt.widgets.ScrollBar",{"parent":"w99","style":["HORIZONTAL"]}],["create","w101","rwt.widgets.ScrollBar",{"parent":"w99","style":["VERTICAL"]}],["set","w99",{"bounds":[10,52,988,402],"children":[],"tabIndex":23,"activeKeys":["CTRL+#70","CTRL+#78","CTRL+#82","CTRL+#89","CTRL+#83","CTRL+#71","CTRL+#69"],"cancelKeys":["CTRL+#70","CTRL+#78","CTRL+#82","CTRL+#89","CTRL+#83","CTRL+#71","CTRL+#69"]}],["listen","w99",{"MouseDown":true,"MouseUp":true,"MouseDoubleClick":true,"KeyDown":true}],["set","w99",{"itemCount":118,"itemHeight":28,"itemMetrics":[[0,0,50,3,0,3,44],[1,50,50,53,0,53,44],[2,100,140,103,0,103,134],[3,240,180,243,0,243,174],[4,420,50,423,0,423,44],[5,470,50,473,0,473,44]],"columnCount":6,"headerHeight":35,"headerVisible":true,"linesVisible":true,"focusItem":"w108","selection":["w108"]}],["listen","w99",{"Selection":true,"DefaultSelection":true}],["set","w99",{"enableCellToolTip":true}],["listen","w100",{"Selection":true}],["set","w101",{"visibility":true}],["listen","w101",{"Selection":true}],["create","w102","rwt.widgets.GridColumn",{"parent":"w99","text":"Nr.","width":50,"moveable":true}],["listen","w102",{"Selection":true}],["create","w103","rwt.widgets.GridColumn",{"parent":"w99","text":"Sym.","index":1,"left":50,"width":50,"moveable":true}],["listen","w103",{"Selection":true}],["create","w104","rwt.widgets.GridColumn",{"parent":"w99","text":"Name","index":2,"left":100,"width":140,"moveable":true}],["listen","w104",{"Selection":true}],["create","w105","rwt.widgets.GridColumn",{"parent":"w99","text":"Series","index":3,"left":240,"width":180,"moveable":true}],["listen","w105",{"Selection":true}],["create","w106","rwt.widgets.GridColumn",{"parent":"w99","text":"Group","index":4,"left":420,"width":50,"moveable":true}],["listen","w106",{"Selection":true}],["create","w107","rwt.widgets.GridColumn",{"parent":"w99","text":"Period","index":5,"left":470,"width":50,"moveable":true}],["listen","w107",{"Selection":true}],["create","w108","rwt.widgets.GridItem",{"parent":"w99","index":0,"texts":["1","H","Hydrogen","Nonmetal","1","1"],"cellBackgrounds":[null,null,null,[138,226,52,255],null,null]}],["create","w109","rwt.widgets.GridItem",{"parent":"w99","index":1,"texts":["2","He","Helium","Noble gas","18","1"],"cellBackgrounds":[null,null,null,[114,159,207,255],null,null]}],["create","w110","rwt.widgets.GridItem",{"parent":"w99","index":2,"texts":["3","Li","Lithium","Alkali metal","1","2"],"cellBackgrounds":[null,null,null,[239,41,41,255],null,null]}],["create","w111","rwt.widgets.GridItem",{"parent":"w99","index":3,"texts":["4","Be","Beryllium","Alkaline earth metal","2","2"],"cellBackgrounds":[null,null,null,[233,185,110,255],null,null]}],["create","w112","rwt.widgets.GridItem",{"parent":"w99","index":4,"texts":["5","B","Boron","Metalloid","13","2"],"cellBackgrounds":[null,null,null,[156,159,153,255],null,null]}],["create","w113","rwt.widgets.GridItem",{"parent":"w99","index":5,"texts":["6","C","Carbon","Nonmetal","14","2"],"cellBackgrounds":[null,null,null,[138,226,52,255],null,null]}],["create","w114","rwt.widgets.GridItem",{"parent":"w99","index":6,"texts":["7","N","Nitrogen","Nonmetal","15","2"],"cellBackgrounds":[null,null,null,[138,226,52,255],null,null]}],["create","w115","rwt.widgets.GridItem",{"parent":"w99","index":7,"texts":["8","O","Oxygen","Nonmetal","16","2"],"cellBackgrounds":[null,null,null,[138,226,52,255],null,null]}],["create","w116","rwt.widgets.GridItem",{"parent":"w99","index":8,"texts":["9","F","Fluorine","Halogen","17","2"],"cellBackgrounds":[null,null,null,[252,233,79,255],null,null]}],["create","w117","rwt.widgets.GridItem",{"parent":"w99","index":9,"texts":["10","Ne","Neon","Noble gas","18","2"],"cellBackgrounds":[null,null,null,[114,159,207,255],null,null]}],["create","w118","rwt.widgets.GridItem",{"parent":"w99","index":10,"texts":["11","Na","Sodium","Alkali metal","1","3"],"cellBackgrounds":[null,null,null,[239,41,41,255],null,null]}],["create","w119","rwt.widgets.GridItem",{"parent":"w99","index":11,"texts":["12","Mg","Magnesium","Alkaline earth metal","2","3"],"cellBackgrounds":[null,null,null,[233,185,110,255],null,null]}],["create","w120","rwt.widgets.GridItem",{"parent":"w99","index":12,"texts":["13","Al","Aluminium","Poor metal","13","3"],"cellBackgrounds":[null,null,null,[238,238,236,255],null,null]}],["create","w121","rwt.widgets.GridItem",{"parent":"w99","index":13,"texts":["14","Si","Silicon","Metalloid","14","3"],"cellBackgrounds":[null,null,null,[156,159,153,255],null,null]}],["create","w122","rwt.widgets.GridItem",{"parent":"w99","index":14,"texts":["15","P","Phosphorus","Nonmetal","15","3"],"cellBackgrounds":[null,null,null,[138,226,52,255],null,null]}],["create","w123","rwt.widgets.GridItem",{"parent":"w99","index":15,"texts":["16","S","Sulfur","Nonmetal","16","3"],"cellBackgrounds":[null,null,null,[138,226,52,255],null,null]}],["create","w124","rwt.widgets.GridItem",{"parent":"w99","index":16,"texts":["17","Cl","Chlorine","Halogen","17","3"],"cellBackgrounds":[null,null,null,[252,233,79,255],null,null]}],["create","w125","rwt.widgets.GridItem",{"parent":"w99","index":17,"texts":["18","Ar","Argon","Noble gas","18","3"],"cellBackgrounds":[null,null,null,[114,159,207,255],null,null]}],["create","w126","rwt.widgets.GridItem",{"parent":"w99","index":18,"texts":["19","K","Potassium","Alkali metal","1","4"],"cellBackgrounds":[null,null,null,[239,41,41,255],null,null]}],["create","w127","rwt.widgets.GridItem",{"parent":"w99","index":19,"texts":["20","Ca","Calcium","Alkaline earth metal","2","4"],"cellBackgrounds":[null,null,null,[233,185,110,255],null,null]}],["create","w128","rwt.widgets.GridItem",{"parent":"w99","index":20,"texts":["21","Sc","Scandium","Transition metal","3","4"],"cellBackgrounds":[null,null,null,[252,175,62,255],null,null]}],["create","w129","rwt.widgets.GridItem",{"parent":"w99","index":21,"texts":["22","Ti","Titanium","Transition metal","4","4"],"cellBackgrounds":[null,null,null,[252,175,62,255],null,null]}],["create","w130","rwt.widgets.GridItem",{"parent":"w99","index":22,"texts":["23","V","Vanadium","Transition metal","5","4"],"cellBackgrounds":[null,null,null,[252,175,62,255],null,null]}],["create","w131","rwt.widgets.GridItem",{"parent":"w99","index":23,"texts":["24","Cr","Chromium","Transition metal","6","4"],"cellBackgrounds":[null,null,null,[252,175,62,255],null,null]}],["create","w132","rwt.widgets.GridItem",{"parent":"w99","index":24,"texts":["25","Mn","Manganese","Transition metal","7","4"],"cellBackgrounds":[null,null,null,[252,175,62,255],null,null]}],["create","w161","rwt.widgets.GridItem",{"parent":"w99","index":53,"texts":["54","Xe","Xenon","Noble gas","18","5"],"cellBackgrounds":[null,null,null,[114,159,207,255],null,null]}],["create","w162","rwt.widgets.GridItem",{"parent":"w99","index":54,"texts":["55","Cs","Caesium","Alkali metal","1","6"],"cellBackgrounds":[null,null,null,[239,41,41,255],null,null]}],["create","w163","rwt.widgets.GridItem",{"parent":"w99","index":55,"texts":["56","Ba","Barium","Alkaline earth metal","2","6"],"cellBackgrounds":[null,null,null,[233,185,110,255],null,null]}],["create","w227","rwt.widgets.Label",{"parent":"w226","style":["NONE"],"bounds":[10,10,966,3],"tabIndex":-1,"text":"Hydrogen (H)"}],["set","w1",{"focusControl":"w99"}],["call","rwt.client.BrowserNavigation","addToHistory",{"entries":[["tableviewer","TableViewer"]]}]]}'

class JsonSmall < Benchmark
  def benchmark
    Parser.new(RAP_BENCHMARK_MINIFIED).parse
  end

  def verify_result(result)
    return false unless result.is_object
    return false unless result.as_object.get('head').is_object
    return false unless result.as_object.get('operations').is_array

    result.as_object.get('operations').as_array.size == 64
  end
end

class Parser
  def initialize(string)
    @input = string
    @index = -1
    @line = 1
    @capture_start = -1
    @column = 0
    @current = nil
    @capture_buffer = ''
  end

  def parse
    read
    skip_white_space
    result = read_value
    skip_white_space
    raise 'Unexpected character' unless is_end_of_text
    result
  end

  def read_value
    case @current
    when 'n'
      read_null
    when 't'
      read_true
    when 'f'
      read_false
    when '"'
      read_string
    when '['
      read_array
    when '{'
      read_object
    when '-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
      read_number
    else
      raise expected('value')
    end
  end

  def read_array
    read
    array = JsonArray.new
    skip_white_space
    return array if read_char(']')

    begin
      skip_white_space
      array.add(read_value)
      skip_white_space
    end while read_char(',')
    raise expected("',' or ']'") unless read_char(']')

    array
  end

  def read_object
    read
    object = JsonObject.new
    skip_white_space
    return object if read_char('}')

    begin
      skip_white_space
      name = read_name
      skip_white_space
      raise expected("':'") unless read_char(':')

      skip_white_space
      object.add(name, read_value)
      skip_white_space
    end while read_char(',')

    raise expected("',' or '}'") unless read_char('}')

    object
  end

  def read_name
    raise expected('name') unless @current == '"'

    read_string_internal
  end

  def read_null
    read
    read_required_char('u')
    read_required_char('l')
    read_required_char('l')
    JsonLiteral::NULL
  end

  def read_true
    read
    read_required_char('r')
    read_required_char('u')
    read_required_char('e')
    JsonLiteral::TRUE
  end

  def read_false
    read
    read_required_char('a')
    read_required_char('l')
    read_required_char('s')
    read_required_char('e')
    JsonLiteral::FALSE
  end

  def read_required_char(ch)
    raise expected("'" + ch + "'") unless read_char(ch)
  end

  def read_string
    JsonString.new(read_string_internal)
  end

  def read_string_internal
    read
    start_capture
    while @current != '"'
      if @current == '\\'
        pause_capture
        read_escape
        start_capture
      else
        read
      end
    end
    string = end_capture
    read
    string
  end

  def read_escape
    read
    case @current
    when '"', '/', '\\'
      @capture_buffer += @current
    when 'b'
      @capture_buffer += "\b"
    when 'f'
      @capture_buffer += "\f"
    when 'n'
      @capture_buffer += "\n"
    when 'r'
      @capture_buffer += "\r"
    when 't'
      @capture_buffer += "\t"
    else
      raise expected('valid escape sequence')
    end
    read
  end

  def read_number
    start_capture
    read_char('-')
    first_digit = @current
    raise expected('digit') unless read_digit

    unless first_digit == '0'
      while read_digit
      end
    end
    read_fraction
    read_exponent
    JsonNumber.new(end_capture)
  end

  def read_fraction
    return false unless read_char('.')

    raise expected('digit') unless read_digit

    while read_digit
    end
    true
  end

  def read_exponent
    return false unless read_char('e') || read_char('E')

    read_char('-') unless read_char('+')

    raise expected('digit') unless read_digit

    while read_digit
    end

    true
  end

  def read_char(ch)
    return false if @current != ch
    read
    true
  end

  def read_digit
    return false unless is_digit
    read
    true
  end

  def skip_white_space
    read while is_white_space
  end

  def read
    if "\n" == @current
      @line  += 1
      @column = 0
    end

    @index += 1

    if @index < @input.length
      @current = @input[@index]
    else
      @current = nil
    end
  end

  def start_capture
    @capture_start = @index
  end

  def pause_capture
    end_ = !@current ? @index : @index - 1
    @capture_buffer += @input[@capture_start..end_]
    @capture_start = -1
  end

  def end_capture
    end_ = !@current ? @index : @index - 1

    if '' == @capture_buffer
      captured = @input[@capture_start..end_]
    else
      @capture_buffer += @input[@capture_start..end_]
      captured = @capture_buffer
      @capture_buffer = ''
    end
    @capture_start = -1
    captured
  end

  def expected(expected)
    if is_end_of_text
      error('Unexpected end of input')
    else
      error('Expected ' + expected)
    end
  end

  def error(message)
    ParseException.new(message, @index, @line, @column - 1)
  end

  def is_white_space
    ' ' == @current || "\t" == @current || "\n" == @current || "\r" == @current
  end

  def is_digit
    '0' == @current || '1' == @current || '2' == @current || '3' == @current ||
      '4' == @current || '5' == @current || '6' == @current ||
      '7' == @current || '8' == @current || '9' == @current
  end

  def is_end_of_text
    @current == nil
  end
end

class HashIndexTable
  def initialize
    @hash_table = Array.new(32, 0)
  end

  def add(name, index)
    slot = hash_slot_for(name)
    if index < 0xff
      # increment by 1, 0 stands for empty
      @hash_table[slot] = (index + 1) & 0xff
    else
      @hash_table[slot] = 0
    end
  end

  def get(name)
    slot = hash_slot_for(name)
    # subtract 1, 0 stands for empty
    (@hash_table[slot] & 0xff) - 1
  end

  def string_hash(s)
    # this is not a proper hash, but sufficient for the benchmark,
    # and very portable!
    s.size * 1_402_589
  end

  def hash_slot_for(element)
    string_hash(element) & @hash_table.length - 1
  end
end

class ParseException < StandardError
  attr_reader :message, :offset, :line, :column

  def initialize(message, offset, line, column)
    @message = message
    @offset  = offset
    @line    = line
    @column  = column
  end
end

class JsonValue
  def is_object
    false
  end

  def is_array
    false
  end

  def is_number
    false
  end

  def is_string
    false
  end

  def is_boolean
    false
  end

  def is_true
    false
  end

  def is_false
    false
  end

  def is_null
    false
  end

  def as_object
    raise('Unsupported operation, not an object: ' + as_string)
  end

  def as_array
    raise('Unsupported operation, not an array: ' + as_string)
  end
end

class JsonArray < JsonValue
  def initialize
    @values = Vector.new
  end

  def add(value)
    raise 'value is null' unless value
    @values.append(value)
    self
  end

  def size
    @values.size
  end

  def get(index)
    @values.at(index)
  end

  def is_array
    true
  end

  def as_array
    self
  end
end

class JsonLiteral < JsonValue
  attr_reader :is_null, :is_true, :is_false

  def initialize(value)
    @value = value
    @is_null = 'null'  == value
    @is_true = 'true'  == value
    @is_false = 'false' == value
  end

  NULL  = JsonLiteral.new('null')
  TRUE  = JsonLiteral.new('true')
  FALSE = JsonLiteral.new('false')

  def as_string
    @value
  end

  def is_boolean
    @is_true || @is_false
  end
end

class JsonNumber < JsonValue
  def initialize(string)
    @string = string
    raise 'string is null' unless string
  end

  def as_string
    @string
  end

  def is_number
    true
  end
end

class JsonObject < JsonValue
  def initialize
    @names  = Vector.new
    @values = Vector.new
    @table  = HashIndexTable.new
  end

  def add(name, value)
    raise 'name is null'  unless name
    raise 'value is null' unless value

    @table.add(name, @names.size)
    @names.append(name)
    @values.append(value)
    self
  end

  def get(name)
    raise 'name is null' unless name

    index = index_of(name)
    index == -1 ? nil : @values.at(index)
  end

  def size
    @names.size
  end

  def is_empty
    @names.is_empty
  end

  def is_object
    true
  end

  def as_object
    self
  end

  def index_of(name)
    index = @table.get(name)
    return index if index != -1 && name == @names.at(index)
    raise 'NotImplemented' # Not needed for benchmark
  end
end

class JsonString < JsonValue
  def initialize(string)
    @string = string
  end

  def is_string
    true
  end
end
