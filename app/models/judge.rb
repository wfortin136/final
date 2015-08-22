class Judge < ActiveRecord::Base
  has_many :judgescores, class_name: "Judgescore", foreign_key: :judge_id
  
  def fightcount
    self.judgescores.count
  end
end

