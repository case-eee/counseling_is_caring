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
session1 = Session.create!(date: '2014-06-06', start_time: '10:00', end_time: '10:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '10:30', end_time: '11:00', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '11:00', end_time: '11:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '11:30', end_time: '12:00', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '12:00', end_time: '12:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '12:30', end_time: '01:00', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '01:00', end_time: '01:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '01:30', end_time: '02:00', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '02:00', end_time: '02:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '02:30', end_time: '03:00', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '03:00', end_time: '03:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '03:30', end_time: '04:00', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '04:00', end_time: '04:30', available: true, counselor_id: 1)
session1 = Session.create!(date: '2014-06-06', start_time: '04:30', end_time: '05:00', available: true, counselor_id: 1)

session2 = Session.create!(date: '2014-06-07', start_time: '10:00', end_time: '10:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '10:30', end_time: '11:00', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '11:00', end_time: '11:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '11:30', end_time: '12:00', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '12:00', end_time: '12:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '12:30', end_time: '01:00', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '01:00', end_time: '01:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '01:30', end_time: '02:00', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '02:00', end_time: '02:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '02:30', end_time: '03:00', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '03:00', end_time: '03:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '03:30', end_time: '04:00', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '04:00', end_time: '04:30', available: true, counselor_id: 1)
session2 = Session.create!(date: '2014-06-07', start_time: '04:30', end_time: '05:00', available: true, counselor_id: 1)

# erin.sessions << session1
# session2 = Session.create!(date: '2014-06-07', start_time: '2014-06-07 16:05:45', end_time: '2014-06-07 20:05:45', available: true)
# erin.sessions << session2
# session3 = Session.create!(date: '2014-06-08', start_time: '2014-06-08 18:05:45', end_time: '2014-06-08 20:05:45', available: true)
# erin.sessions << session3
# session4 = Session.create!(date: '2014-06-06', start_time: '2014-06-06 18:05:45', end_time: '2014-06-06 20:05:45', available: true)
# session5 = Session.create!(date: '2014-06-06', start_time: '2014-06-06 16:05:45', end_time: '2014-06-06 20:05:45', available: true)
# dave.sessions << session4
# dave.sessions << session5

#Appointments
andrew.appointments << Appointment.create!(session_id: session1.id)
# steve.appointments << Appointment.create!(session_id: session2.id)
# andrew.appointments << Appointment.create!(session_id: session3.id)
