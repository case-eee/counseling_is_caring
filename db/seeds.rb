# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'date'

#Counselors
erin = User.create!(first_name: 'Erin', last_name: 'Jones', email: 'erin@dbc.com', role: 'counselor', password: 'brainz', cohort: 'staff')

#Students
andrew = User.create!(first_name: 'Andrew', last_name: 'Larson', email: 'andqwoo@gmail.com', role: 'student', password_hash: 'computerz', cohort: 'nighthawk')

#Sessions

date = Date.today.to_s
date2 = (Date.today + 1).to_s

day1 = [
	session1 = Session.create!(date: date, start_time: '10:00', end_time: '10:30', available: true),
	session2 = Session.create!(date: date, start_time: '10:30', end_time: '11:00', available: true),
	session3 = Session.create!(date: date, start_time: '11:00', end_time: '11:30', available: true),
	session4 = Session.create!(date: date, start_time: '11:30', end_time: '12:00', available: true),
	session5 = Session.create!(date: date, start_time: '12:00', end_time: '12:30', available: true),
	session6 = Session.create!(date: date, start_time: '12:30', end_time: '01:00', available: true),
	session7 = Session.create!(date: date, start_time: '01:00', end_time: '01:30', available: true),
	session8 = Session.create!(date: date, start_time: '01:30', end_time: '02:00', available: true),
	session9 = Session.create!(date: date, start_time: '02:00', end_time: '02:30', available: true),
	session10 = Session.create!(date: date, start_time: '02:30', end_time: '03:00', available: true),
	session11 = Session.create!(date: date, start_time: '03:00', end_time: '03:30', available: true),
	session12 = Session.create!(date: date, start_time: '03:30', end_time: '04:00', available: true),
	session13 = Session.create!(date: date, start_time: '04:00', end_time: '04:30', available: true),
	session14 = Session.create!(date: date, start_time: '04:30', end_time: '05:00', available: true)
]

day2 = [
	session15 = Session.create!(date: date2, start_time: '10:00', end_time: '10:30', available: true),
	session16 = Session.create!(date: date2, start_time: '10:30', end_time: '11:00', available: true),
	session17 = Session.create!(date: date2, start_time: '11:00', end_time: '11:30', available: true),
	session18 = Session.create!(date: date2, start_time: '11:30', end_time: '12:00', available: true),
	session19 = Session.create!(date: date2, start_time: '12:00', end_time: '12:30', available: true),
	session20 = Session.create!(date: date2, start_time: '12:30', end_time: '01:00', available: true),
	session21 = Session.create!(date: date2, start_time: '01:00', end_time: '01:30', available: true),
	session22 = Session.create!(date: date2, start_time: '01:30', end_time: '02:00', available: true),
	session23 = Session.create!(date: date2, start_time: '02:00', end_time: '02:30', available: true),
	session24 = Session.create!(date: date2, start_time: '02:30', end_time: '03:00', available: true),
	session25 = Session.create!(date: date2, start_time: '03:00', end_time: '03:30', available: true),
	session26 = Session.create!(date: date2, start_time: '03:30', end_time: '04:00', available: true),
	session27 = Session.create!(date: date2, start_time: '04:00', end_time: '04:30', available: true),
	session28 = Session.create!(date: date2, start_time: '04:30', end_time: '05:00', available: true)
]

day1.each do |sesh|
	erin.sessions << sesh
end

day2.each do |sesh|
	erin.sessions << sesh
end


#Appointments
andrew.appointments << Appointment.create!(session_id: session1.id)
andrew.appointments << Appointment.create!(session_id: session5.id)
andrew.appointments << Appointment.create!(session_id: session16.id)

