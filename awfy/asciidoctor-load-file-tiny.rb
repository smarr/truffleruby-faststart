# frozen_string_literal: true

require_relative '../asciidoctor/asciidoctor/lib/asciidoctor'

class AsciidoctorLoadFileTiny < Benchmark
  def initialize
    sample_file = "#{__dir__}/asciidoctor-tiny.adoc"
    @sample_file_text = File.read(sample_file)
  end

  def benchmark
    Asciidoctor.load(@sample_file_text)
  end

  def verify_result(result)
    result.doctitle == "AsciiDoc User Guide" and result.blocks.size == 8 and result.blocks[7].title == "HTML5 and XHTML 1.1"
  end
end
