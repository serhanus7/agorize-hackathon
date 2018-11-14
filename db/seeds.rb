# Skills
football = Skill.create name: "Football"
basketball =Skill.create name: "Basketball"
foot = Skill.create name: "Foot"  , parent_id: football.id
basket = Skill.create name: "Basket", parent_id: basketball.id
soccer = Skill.create name: "Soccer", parent_id: football.id

# Users
user1 = User.create points: 100
user2 = User.create points: 200
user3 = User.create points: 100
user4 = User.create points: 50
user5 = User.create points: 10

football.users << user1
football.users << user2
foot.users << user3
basketball.users << user4
soccer.users << user5

# Skills_users
# SkillsUser.create skill_id: 1, user_id:1
# SkillsUser.create skill_id: 1, user_id:2
# SkillsUser.create skill_id: 3, user_id:3
# SkillsUser.create skill_id: 2, user_id:4
# SkillsUser.create skill_id: 5, user_id:5