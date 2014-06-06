# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'date'

#Counselors
erin = User.create!(first_name: 'Erin', last_name: 'Jones', email: 'erin@mentalhealth.com', role: 'counselor', password: 'helping', cohort: 'staff')
dave = User.create!(first_name: 'Dave', last_name: 'Hoover', email: 'dave@mentalhealth.com', role: 'counselor', password: 'helping', cohort: 'staff')

#Students
steve = User.create!(first_name: 'Steve', last_name: 'Yim', email: 'steve@dbc.com', role: 'student', password: 'learning', cohort: 'nighthoney')
andrew = User.create!(first_name: 'Andrew', last_name: 'Larson', email: 'andqwoo@gmail.com', role: 'student', password: 'computerz', cohort: 'nighthawk')


todays_date = Date.today.to_s
time_now =Time.now

#Sessions
erin.sessions << Session.create!(date: '2014-06-06', start_time: '2014-06-06 16:05:45', end_time: '2014-06-06 20:05:45', available: true)
erin.sessions << Session.create!(date: '2014-06-07', start_time: '2014-06-07 16:05:45', end_time: '2014-06-07 20:05:45', available: true)
erin.sessions << Session.create!(date: '2014-06-08', start_time: '2014-06-08 18:05:45', end_time: '2014-06-08 20:05:45', available: true)
dave.sessions << Session.create!(date: '2014-06-06', start_time: '2014-06-06 18:05:45', end_time: '2014-06-06 20:05:45', available: true)
dave.sessions << Session.create!(date: '2014-06-06', start_time: '2014-06-06 16:05:45', end_time: '2014-06-06 20:05:45', available: true)
