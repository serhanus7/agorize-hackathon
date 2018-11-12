# Skills
Skill.create id:1, name: "Football"
Skill.create id:2, name: "Basketball"
Skill.create id:3, name: "Foot"  , parent_id: 1
Skill.create id:4, name: "Basket", parent_id: 2
Skill.create id:5, name: "Soccer", parent_id: 1

# Users
User.create points: 100
User.create points: 200
User.create points: 100
User.create points: 50
User.create points: 10

# Skills_users
SkillsUser.create skill_id: 1, user_id:1
SkillsUser.create skill_id: 1, user_id:2
SkillsUser.create skill_id: 3, user_id:3
SkillsUser.create skill_id: 2, user_id:4
SkillsUser.create skill_id: 5, user_id:5