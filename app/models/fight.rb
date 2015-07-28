class Fight < ActiveRecord::Base
  
  belongs_to :fightcard, class_name: "Fightcard", foreign_key: :fightcard_id
  has_one :scorecard, class_name: "Scorecard", foreign_key: :id

  has_one :fighter_1, class_name: "Fighter", foreign_key: :id, through: :scorecard 
  has_one :fighter_2, class_name: "Fighter", foreign_key: :id, through: :scorecard 
  
  has_one :score_1, class_name: "Judgescore", foreign_key: :id, through: :scorecard 
  has_one :score_2, class_name: "Judgescore", foreign_key: :id, through: :scorecard 
  has_one :score_3, class_name: "Judgescore", foreign_key: :id, through: :scorecard

  has_one :judge_1, class_name: "Judge", foreign_key: :id, through: :scorecard
  has_one :judge_2, class_name: "Judge", foreign_key: :id, through: :scorecard
  has_one :judge_3, class_name: "Judge", foreign_key: :id, through: :scorecard

end
