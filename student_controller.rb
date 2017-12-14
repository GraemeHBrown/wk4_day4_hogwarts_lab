require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student.rb')

get('/students') do
  @students = Student.find_all()
  erb :index
end