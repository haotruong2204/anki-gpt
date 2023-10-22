# frozen_string_literal: true

class HandleJsonKanjiService
  def handle_file
    file_path = Rails.root.join("db", "kvg-index.json")
    begin
      file_content = File.read(file_path)
      json_data = JSON.parse(file_content)

      json_data.each do |key, value|
        Kanji.create(chinese_character: key, svg: value.last)
      end
    rescue StandardError => e
      puts "Lỗi khi đọc tệp JSON: #{e.message}"
      nil
    end
  end
end
