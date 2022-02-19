# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
name = "ゲスト"
email = "test@example.com"
password = "password"

# users テーブルを再生成（関連付いたテーブルを含む）
ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

# 以下，開発用の初期データ
user1 = User.create!(name: "昇", email: "satou@example.com", password: "password")
user2 = User.create!(name: "昇子",email: "suzuki@example.com", password: "password")
user3 = User.create!(name: "昇の助",email: "tanaka@example.com", password: "password")

# ***** 以下を編集(変数に代入) *****
post1 = user2.posts.create!(content: "沖縄そば")
post2 = user1.posts.create!(content: "海ぶどう")
post3 = user3.posts.create!(content: "ゴーヤーチャンプルー")
post4 = user3.posts.create!(content: "サーターアンダギー")
post5 = user1.posts.create!(content: "タコライス")

# ***** 以下を追加 *****
post1.likes.create!(user_id: user1.id)
post1.likes.create!(user_id: user3.id)
post2.likes.create!(user_id: user2.id)
post3.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user2.id)
post5.likes.create!(user_id: user3.id)
# ***** 以上を編集・追加 *****

# ログイン時に使用するアカウント（変数への代入は不要）
User.create!(name: name, email: email, password: password)

puts "初期データの投入に成功しました!"