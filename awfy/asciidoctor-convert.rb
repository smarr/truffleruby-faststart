# frozen_string_literal: true

require_relative '../asciidoctor/asciidoctor/lib/asciidoctor'

class AsciidoctorConvert < Benchmark
  def initialize
    sample_file = "#{__dir__}/../asciidoctor/data/userguide.adoc"
    @sample_file_text = File.read(sample_file)
    @result = File.read("#{__dir__}/asciidoctor-convert.result.html")
  end

  def benchmark
    document = Asciidoctor.load(@sample_file_text)
    document.convert
  end

  def verify_result(result)
    @result == result
  end
end
