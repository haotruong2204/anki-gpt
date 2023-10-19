# frozen_string_literal: true

require "nokogiri"

class HandleSvgService
  def handle_kanji kanji
    characters = kanji.split("-")
    order_sql = characters.map.with_index { |char, index| "WHEN '#{char}' THEN #{index}" }.join(" ")
    list_kanji = Kanji.where(chinese_character: characters).order(Arel.sql("CASE chinese_character #{order_sql} END"))

    list_kanji.map do |kj|
      svg_file_path = Rails.root.join("app/assets/images/kanji", kj.svg)
      svg_content = File.read(svg_file_path)
      doc = Nokogiri::XML(svg_content)
      paths = doc.css("path")
      paths = paths.map do |path|
        path["d"]
      end

      {
        paths:,
        kanji: kj.svg,
        yin_han: kj.yin_han,
        meaning: kj.meaning,
        on: kj.on,
        kun: kj.kun
      }
    end
  end
end
