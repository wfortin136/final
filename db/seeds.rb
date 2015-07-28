Judge.delete_all
chris_lee = Judge.create(name: "Chris Lee")
tony_weeks = Judge.create(name: "Tony Weeks")
derek_cleary = Judge.create(name: "Derek Cleary")
sal = Judge.create(name: "Sal D'Amato")
marco = Judge.create(name: "Marco Rosales")
glenn_t = Judge.create(name: "Glenn Trowbridge")

Fighter.delete_all
tj = Fighter.create(name: "T.J. Dillashaw", wins: 12, losses: 2, draws: 0, nc: 0)
renan = Fighter.create(name: "Renan Barao", wins: 33, losses: 3, draws: 0, nc: 1)
r_lawler = Fighter.create(name: "Robbie Lawler", wins: 26, losses: 10, draws: 0, nc: 1)
j_hendricks = Fighter.create(name: "Johny Hendricks", wins: 17, losses: 3, draws: 0, nc: 0)

Fightcard.delete_all
fc1 = Fightcard.create(name: "UFC 173", city: "Las Vegas", state: "NV", country: "U.S.A.", day: 24, month: 5, year: 2014)
fc2 = Fightcard.create(name: "UFC 181", city: "Las Vegas", state: "NV", country: "U.S.A.", day: 6, month: 12, year: 2014)

Judgescore.delete_all
s1 = Judgescore.create(judge_id: chris_lee.id, r1_1: 10, r2_1: 9, r3_1: 10, r4_1: 10, r1_2: 9, r2_2: 10, r3_2: 9, r4_2: 9, t1: 39, t2:37)
s2 = Judgescore.create(judge_id: tony_weeks.id, r1_1: 10, r2_1: 10, r3_1: 10, r4_1: 10, r1_2: 9, r2_2: 9, r3_2: 9, r4_2: 9, t1: 40, t2:36)
s3 = Judgescore.create(judge_id: derek_cleary.id, r1_1: 10, r2_1: 10, r3_1: 10, r4_1: 10, r1_2: 9, r2_2: 9, r3_2: 9, r4_2: 9, t1: 40, t2:36)
s4 = Judgescore.create(judge_id: sal.id, r1_1: 10, r2_1: 9, r3_1: 9, r4_1: 9, r5_1: 10, r1_2: 9, r2_2: 10, r3_2: 10, r4_2: 10, r5_2: 9, t1: 47, t2:48)
s5 = Judgescore.create(judge_id: marco.id, r1_1: 10, r2_1: 9, r3_1: 9, r4_1: 10, r5_1: 10, r1_2: 9, r2_2: 10, r3_2: 10, r4_2: 9, r5_2: 9, t1: 48, t2:47)
s6 = Judgescore.create(judge_id: glenn_t.id, r1_1: 10, r2_1: 10, r3_1: 9, r4_1: 10, r5_1: 10, r1_2: 9, r2_2: 9, r3_2: 10, r4_2: 9, r5_2: 9, t1: 49, t2:46)

Scorecard.delete_all
sc1 = Scorecard.create(fighter_1_id: tj.id, fighter_2_id: renan.id, j_1_score_id: s1.id, j_2_score_id: s2.id, j_3_score_id: s3.id, pic: "/ufc-173-dillashaw-barao-scorecards-big.jpg")
sc2 = Scorecard.create(fighter_1_id: r_lawler.id, fighter_2_id: j_hendricks.id, j_1_score_id: s4.id, j_2_score_id: s5.id, j_3_score_id: s6.id, pic: "/HendricksLawler2_scorecard.jpg")


Fight.delete_all
Fight.create(fightcard_id: fc1.id, fight_num: 1, card_level:1, weightclass: "Bantomweight", championship: 1, rounds_sch: 5, fighttime: 1346, method: "TKO (head kick and punches)", scorecard_id: sc1.id)
Fight.create(fightcard_id: fc2.id, fight_num: 1, weightclass: "Welterweight", championship: 1, card_level:1, rounds_sch: 5, fighttime: 1500, method: "Split Decision", scorecard_id: sc2.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
