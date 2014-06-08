require 'spec_helper'

describe AppointmentsController do 

	describe 'GET #index' do
		it 'populates a page with upcoming appointments'
		it 'renders the :index view'
		it 'shows a book appointment link'
		it 'shows a view past appointments link'

	end


	describe '#view_all_sessions' do
		it 'populates an array of all sessions'
		it 'renders the :show template'
	end


	describe 'POST #create' do
		it 'saves a new appointment to the database'
		it 'associates a new appointment with the chosen session'
		it 'renders the :index view'
	end

	describe '#past_appointments' do
	end

	describe '#destroy' do
	
	 end


end