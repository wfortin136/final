class Scorecard < ActiveRecord::Base
  #belongs_to :fight, class_name: "Fight"
  has_one :fighter_1, class_name: "Fighter", foreign_key: :id, primary_key: :fighter_1_id
  has_one :fighter_2, class_name: "Fighter", foreign_key: :id, primary_key: :fighter_2_id
  
  has_one :score_1, class_name: "Judgescore", foreign_key: :id, primary_key: :j_1_score_id
  has_one :score_2, class_name: "Judgescore", foreign_key: :id, primary_key: :j_2_score_id
  has_one :score_3, class_name: "Judgescore", foreign_key: :id, primary_key: :j_3_score_id

  has_one :judge_1, class_name: "Judge", foreign_key: :id, primary_key: :judge_id, through: :score_1
  has_one :judge_2, class_name: "Judge", foreign_key: :id, primary_key: :judge_id, through: :score_2
  has_one :judge_3, class_name: "Judge", foreign_key: :id, primary_key: :judge_id, through: :score_3

end
