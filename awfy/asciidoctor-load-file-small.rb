# frozen_string_literal: true

require_relative '../asciidoctor/asciidoctor/lib/asciidoctor'

class AsciidoctorLoadFileSmall < Benchmark
  def initialize
    sample_file = "#{__dir__}/asciidoctor-small.adoc"
    @sample_file_text = File.read(sample_file)
  end

  def benchmark
    Asciidoctor.load(@sample_file_text)
  end

  def verify_result(result)
    result.doctitle == "AsciiDoc User Guide" and result.blocks.size == 11 and result.blocks[9].title == "Document Processing"
  end
end
