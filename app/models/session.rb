class Session < ActiveRecord::Base
	has_one :appointment
	belongs_to :user, foreign_key: :counselor_id

end



#   # attr_accessor :start_time, :end_time, :patient_name

#   # make this a scope
#   def self.for_date(date_string)
#     date = Date.parse(date_string.to_s)
#     Session.where(start_time: date.beginning_of_day..date.end_of_day)
#   end

#   def display
#     "#{self.start_time.strftime("%H:%M")} to #{self.end_time.strftime("%H:%M")} #{self.patient_name}"
#   end

# end

# class SessionsController

#   def index
#     parsed_date = params[:date] || Date.today.to_s
#     @sessions = Session.for_date(parsed_date)
#     @date = Date.parse(parsed_date).strftime("%B %d, %Y")
#   end

