# frozen_string_literal: true

require "nokogiri"
# require "victor"

class HandleSvgService
  def handle_kanji kanji
    svg_file_path = Rails.root.join("tmp/kanji", kanji.svg)
    svg_content = File.read(svg_file_path)
    doc = Nokogiri::XML(svg_content)
    doc.css("path")
  end
end
