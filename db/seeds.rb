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
andrew = User.create!(first_name: 'Andrew', last_name: 'Larson', email: 'andqwoo@gmail.com', role: 'student', password: 'computerz', cohort: 'nighthawk')

#Sessions


date = Date.today.to_s
date2 = (Date.today + 1).to_s

day1 = [
	session1 = Session.create!(date: date, start_time: '10:00', end_time: '10:30', available: true, counselor_id: 1),
	session2 = Session.create!(date: date, start_time: '10:30', end_time: '11:00', available: true, counselor_id: 1),
	session3 = Session.create!(date: date, start_time: '11:00', end_time: '11:30', available: true, counselor_id: 1),
	session4 = Session.create!(date: date, start_time: '11:30', end_time: '12:00', available: true, counselor_id: 1),
	session5 = Session.create!(date: date, start_time: '12:00', end_time: '12:30', available: true, counselor_id: 1),
	session6 = Session.create!(date: date, start_time: '12:30', end_time: '01:00', available: true, counselor_id: 1),
	session7 = Session.create!(date: date, start_time: '01:00', end_time: '01:30', available: true, counselor_id: 1),
	session8 = Session.create!(date: date, start_time: '01:30', end_time: '02:00', available: true, counselor_id: 1),
	session9 = Session.create!(date: date, start_time: '02:00', end_time: '02:30', available: true, counselor_id: 1),
	session10 = Session.create!(date: date, start_time: '02:30', end_time: '03:00', available: true, counselor_id: 1),
	session11 = Session.create!(date: date, start_time: '03:00', end_time: '03:30', available: true, counselor_id: 1),
	session12 = Session.create!(date: date, start_time: '03:30', end_time: '04:00', available: true, counselor_id: 1),
	session13 = Session.create!(date: date, start_time: '04:00', end_time: '04:30', available: true, counselor_id: 1),
	session14 = Session.create!(date: date, start_time: '04:30', end_time: '05:00', available: true, counselor_id: 1)
]

day2 = [
	session15 = Session.create!(date: date2, start_time: '10:00', end_time: '10:30', available: true, counselor_id: 1),
	session16 = Session.create!(date: date2, start_time: '10:30', end_time: '11:00', available: true, counselor_id: 1),
	session17 = Session.create!(date: date2, start_time: '11:00', end_time: '11:30', available: true, counselor_id: 1),
	session18 = Session.create!(date: date2, start_time: '11:30', end_time: '12:00', available: true, counselor_id: 1),
	session19 = Session.create!(date: date2, start_time: '12:00', end_time: '12:30', available: true, counselor_id: 1),
	session20 = Session.create!(date: date2, start_time: '12:30', end_time: '01:00', available: true, counselor_id: 1),
	session21 = Session.create!(date: date2, start_time: '01:00', end_time: '01:30', available: true, counselor_id: 1),
	session22 = Session.create!(date: date2, start_time: '01:30', end_time: '02:00', available: true, counselor_id: 1),
	session23 = Session.create!(date: date2, start_time: '02:00', end_time: '02:30', available: true, counselor_id: 1),
	session24 = Session.create!(date: date2, start_time: '02:30', end_time: '03:00', available: true, counselor_id: 1),
	session25 = Session.create!(date: date2, start_time: '03:00', end_time: '03:30', available: true, counselor_id: 1),
	session26 = Session.create!(date: date2, start_time: '03:30', end_time: '04:00', available: true, counselor_id: 1),
	session27 = Session.create!(date: date2, start_time: '04:00', end_time: '04:30', available: true, counselor_id: 1),
	session28 = Session.create!(date: date2, start_time: '04:30', end_time: '05:00', available: true, counselor_id: 1)
]

# day1.each do |sesh|
# 	erin.sessions << sesh
# end

# day2.each do |sesh|
# 	erin.sessions << sesh
# end


#Appointments
andrew.appointments << Appointment.create!(session_id: session1.id)
session1.update_attributes(available: false)

andrew.appointments << Appointment.create!(session_id: session5.id)
session5.update_attributes(available: false)

andrew.appointments << Appointment.create!(session_id: session16.id)
session16.update_attributes(available: false)

#Erin Closing Sessions for each "day"
#day1
session2.update_attributes(available: false)
session3.update_attributes(available: false)
session12.update_attributes(available: false)
session13.update_attributes(available: false)
session14.update_attributes(available: false)
#day2
session18.update_attributes(available: false)
session19.update_attributes(available: false)
session20.update_attributes(available: false)
