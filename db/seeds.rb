# user作成
5.times do |n|
  User.create!(
    email: "ruiiii180#{n + 1}@test.com",
    name: "テストユーザー#{n + 1}",
    password: "password"
  )
end

#creatures_info作成
5.times do |n|
  CreaturesInfo.create!(
    
  )
end