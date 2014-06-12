# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

user = User.create :name => "tester", :email => "t@t.com", :password => "tester", :password_confirmation =>"tester"
user.add_role :contributor

post_text="This is the first post, the first post, the first post, the first post, the first post!"
post = Post.create :author=>user, :title=>"First Post", :html=>"<p>#{post_text}</p>", :markdown=>post_text,
          :status=>"published"

