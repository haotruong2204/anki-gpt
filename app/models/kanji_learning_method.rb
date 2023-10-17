# == Schema Information
#
# Table name: kanji_learning_methods
#
#  id           :bigint           not null, primary key
#  content      :text(65535)
#  status       :integer          default(0)
#  total_like   :integer          default(0)
#  total_unlike :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  account_id   :integer
#  kanji_id     :integer
#
class KanjiLearningMethod < ApplicationRecord
end
