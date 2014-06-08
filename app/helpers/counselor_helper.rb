module CounselorHelper

  def day_sessions(day)
    Session.where(date: day).reorder('id')
  end

  def future_sessions
    Session.where("date >= ?", today).distinct.pluck(:date)
  end

  def create_sessions(date)
    @day = [
      session1 = Session.create!(date: date, start_time: '10:00', end_time: '10:30', available: true, counselor_id: current_user.id),
      session2 = Session.create!(date: date, start_time: '10:30', end_time: '11:00', available: true, counselor_id: current_user.id),
      session3 = Session.create!(date: date, start_time: '11:00', end_time: '11:30', available: true, counselor_id: current_user.id),
      session4 = Session.create!(date: date, start_time: '11:30', end_time: '12:00', available: true, counselor_id: current_user.id),
      session5 = Session.create!(date: date, start_time: '12:00', end_time: '12:30', available: true, counselor_id: current_user.id),
      session6 = Session.create!(date: date, start_time: '12:30', end_time: '01:00', available: true, counselor_id: current_user.id),
      session7 = Session.create!(date: date, start_time: '01:00', end_time: '01:30', available: true, counselor_id: current_user.id),
      session8 = Session.create!(date: date, start_time: '01:30', end_time: '02:00', available: true, counselor_id: current_user.id),
      session9 = Session.create!(date: date, start_time: '02:00', end_time: '02:30', available: true, counselor_id: current_user.id),
      session10 = Session.create!(date: date, start_time: '02:30', end_time: '03:00', available: true, counselor_id: current_user.id),
      session11 = Session.create!(date: date, start_time: '03:00', end_time: '03:30', available: true, counselor_id: current_user.id),
      session12 = Session.create!(date: date, start_time: '03:30', end_time: '04:00', available: true, counselor_id: current_user.id),
      session13 = Session.create!(date: date, start_time: '04:00', end_time: '04:30', available: true, counselor_id: current_user.id),
      session14 = Session.create!(date: date, start_time: '04:30', end_time: '05:00', available: true, counselor_id: current_user.id)
    ]
  end

end
