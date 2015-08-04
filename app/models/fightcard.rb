class Fightcard < ActiveRecord::Base

  has_many :fights, class_name: "Fight", foreign_key: :fightcard_id
end
