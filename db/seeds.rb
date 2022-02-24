# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = "password"
admin_email = "admin@example.com"

AdminUser.find_or_create_by!(email: admin_email) do |adminuser|
  adminuser.password = password
  puts "管理者ユーザーの初期データインポートに成功しました。"
end