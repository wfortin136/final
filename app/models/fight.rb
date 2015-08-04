class Fight < ActiveRecord::Base
  
  belongs_to :fightcard, class_name: "Fightcard", foreign_key: :fightcard_id
  has_one :scorecard, class_name: "Scorecard", foreign_key: :id, primary_key: :scorecard_id

  has_one :fighter_1, class_name: "Fighter", foreign_key: :id, through: :scorecard 
  has_one :fighter_2, class_name: "Fighter", foreign_key: :id, through: :scorecard 
  
  has_one :score_1, class_name: "Judgescore", foreign_key: :id, through: :scorecard 
  has_one :score_2, class_name: "Judgescore", foreign_key: :id, through: :scorecard 
  has_one :score_3, class_name: "Judgescore", foreign_key: :id, through: :scorecard

  has_one :judge_1, class_name: "Judge", foreign_key: :id, through: :scorecard
  has_one :judge_2, class_name: "Judge", foreign_key: :id, through: :scorecard
  has_one :judge_3, class_name: "Judge", foreign_key: :id, through: :scorecard

  def round
    (self.fighttime/(60*5)).floor
  end

  def roundminutes
    mins = ((self.fighttime - self.round*60*5)/60).floor
    puts mins
    if mins == 0
      return 5
    else
      return mins
    end
  end
  
  def roundsecs
    if self.roundminutes == 5
      format('%02d',0)
    else
      format('%02d', (self.fighttime - self.round*60*5 - self.roundminutes*60))
    end
  end

  def fighttime_db(rounds, minutes, seconds)
    self.fighttime = rounds*60*5 + minutes*60 + seconds
  end
end
