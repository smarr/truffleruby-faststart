# frozen_string_literal: true

require_relative '../asciidoctor/asciidoctor/lib/asciidoctor'

class AsciidoctorLoadFile < Benchmark
  def initialize
    sample_file = "#{__dir__}/../asciidoctor/data/userguide.adoc"
    @sample_file_text = File.read(sample_file)
  end

  def benchmark
    Asciidoctor.load(@sample_file_text)
  end

  def verify_result(result)
    result.doctitle == "AsciiDoc User Guide" and result.blocks.size == 47 and result.blocks[40].title == "AsciiDoc Safe Mode"
  end
end
