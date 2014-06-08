module CounselorHelper

  def day_sessions(day)
    Session.where(date: day).reorder('id')
  end

  def future_sessions
    Session.where("date >= ?", today).distinct.pluck(:date)
  end

end
