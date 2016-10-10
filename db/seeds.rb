# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  Admin User id = 1
User.create(
  username: "AdminUser",
  email: "tou9702@gmail.com",
  password: "asdfasdf",
  admin: true
)

#  20 Sample Users
1.upto(20) do |i|
  User.create(
    username: "SeedUser#{i}",
    email: "SeedUser#{i}@abc.com",
    password: "asdfasdf",
  )
end

#  10 Default Skills
skills_name = [
  "Ruby on Rails",
  "Python",
  "React.js",
  "Angular.js",
  "Swift",
  "CSS",
  "Start up",
  "Marketing",
  "SEO",
  "Ruby"
]
skills_name.each do |name|
  Skill.create(name: name)
end

#  User Skills
1.upto(21) do |user_id|
  1.upto(8) do |skill_id|
    UserSkill.create(
      user_id: user_id,
      skill_id: skill_id
    )
  end
end

#  Endorsements
2.upto(6) do |user_id|
  1.upto(5) do |user_skill_id|
    Endorsement.create(
      user_id: user_id,
      user_skill_id: user_skill_id
    )
  end
end
