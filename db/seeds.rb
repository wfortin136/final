Judge.delete_all
Judge.create(id: 1, name: "Chris Lee")
Judge.create(id: 2, name: "Tony Weeks")
Judge.create(id: 3, name: "Derek Cleary")

Fighter.delete_all
Fighter.create(id:1, name: "T.J. Dillashaw", wins: 12, losses: 2, draws: 0, nc: 0)
Fighter.create(id:2, name: "Renan Barao", wins: 33, losses: 3, draws: 0, nc: 1)

Fightcard.delete_all
Fightcard.create(id: 1, name: "UFC 173", city: "Las Vegas", state: "Nevada", country: "United States", day: 24, month: 5, year: 2014)

Judgescore.delete_all
Judgescore.create(id: 1, judge_id: 1, r1_1: 10, r2_1: 9, r3_1: 10, r4_1: 10, r1_2: 9, r2_2: 10, r3_2: 9, r4_2: 9, t1: 39, t2:37)
Judgescore.create(id: 2, judge_id: 2, r1_1: 10, r2_1: 10, r3_1: 10, r4_1: 10, r1_2: 9, r2_2: 9, r3_2: 9, r4_2: 9, t1: 40, t2:36)
Judgescore.create(id: 3, judge_id: 3, r1_1: 10, r2_1: 10, r3_1: 10, r4_1: 10, r1_2: 9, r2_2: 9, r3_2: 9, r4_2: 9, t1: 40, t2:36)

Scorecard.delete_all
Scorecard.create(id: 1, fighter_1_id: 1, fighter_2_id: 2, j_1_score_id: 1, j_2_score_id: 2, j_3_score_id: 3, pic: "ufc-173-dillashaw-barao-scorecards-big.jpg")


Fight.delete_all
Fight.create(id: 1, fight_num: 1, card_level:1, rounds_sch: 5, fightime: 1346, method: "TKO (head kick and punches)", scorecard_id: 1)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
