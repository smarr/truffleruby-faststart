# frozen_string_literal: true

require_relative '../asciidoctor/asciidoctor/lib/asciidoctor'

class AsciidoctorConvertTiny < Benchmark
  def initialize
    sample_file = "#{__dir__}/asciidoctor-tiny.adoc"
    @sample_file_text = File.read(sample_file)
    @expected_result = File.read("#{__dir__}/asciidoctor-tiny.html")
  end

  def benchmark
    document = Asciidoctor.load(@sample_file_text)
    document.convert
  end

  def verify_result(result)
    @expected_result == result
  end
end
