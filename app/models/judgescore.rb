class Judgescore < ActiveRecord::Base
  has_one :judge_1, class: "Judge", foreign_key: :id, primary_key: :judge_id
  has_one :judge_2, class: "Judge", foreign_key: :id, primary_key: :judge_id
  has_one :judge_3, class: "Judge", foreign_key: :id, primary_key: :judge_id
end
