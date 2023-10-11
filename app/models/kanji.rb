# frozen_string_literal: true

# == Schema Information
#
# Table name: kanjis
#
#  id                :bigint           not null, primary key
#  chinese_character :string(255)
#  kun               :string(255)
#  meaning           :string(255)
#  on                :string(255)
#  svg               :text(65535)
#  yin_han           :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Kanji < ApplicationRecord
end
