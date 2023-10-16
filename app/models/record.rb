# == Schema Information
#
# Table name: records
#
#  id         :bigint           not null, primary key
#  kanji_list :text(65535)
#  title      :string(255)
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :integer
#
class Record < ApplicationRecord
end
