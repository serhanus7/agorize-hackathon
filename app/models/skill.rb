class Skill < ApplicationRecord
  belongs_to :parent, class_name: "Skill", optional: true
  has_many :skills_users
  has_many :users, through: :skills_users

  validates :name,
            format: { with: /\A[A-Za-z_ ]+\z/,
                      message: "ERROR: only allows letters, spaces or underscores."},
            :uniqueness => true

  def self.get_resume
    sql = "select skills.id, skills.name, query.points, query.users_count
              from skills
                inner join (SELECT CASE WHEN skills.parent_id IS NULL THEN skills.id ELSE skills.parent_id END AS parent, sum(users.points) as points, count(users) as users_count
                            FROM skills
                              LEFT OUTER JOIN skills_users
                                ON skills.id = skills_users.skill_id
                              LEFT OUTER JOIN users
                                ON skills_users.user_id = users.id
                            GROUP BY parent) query
              on skills.id = query.parent
            order by skills.id;"
    ActiveRecord::Base.connection.execute(sql)
  end
end
