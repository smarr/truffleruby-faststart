# frozen_string_literal: true

require_relative '../asciidoctor/asciidoctor/lib/asciidoctor'

class AsciidoctorConvertSmall < Benchmark
  def initialize
    sample_file = "#{__dir__}/asciidoctor-small.adoc"
    @sample_file_text = File.read(sample_file)
    @result = File.read("#{__dir__}/asciidoctor-small.html")
  end

  def benchmark
    document = Asciidoctor.load(@sample_file_text)
    document.convert
  end

  def verify_result(result)
    @result == result
  end
end
