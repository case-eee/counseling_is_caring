module CounselorHelper

  def day_sessions(day)
    Session.where(date: day).reorder('id')
  end

  def future_sessions
    Session.where("date >= ?", today).distinct.pluck(:date)
  end

  def create_sessions(date)
    @day = [
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
  end

end
