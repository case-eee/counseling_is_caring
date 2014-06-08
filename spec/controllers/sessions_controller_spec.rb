	require 'spec_helper'

describe Counselor::SessionsController do 

	describe '#index' do
		it 'renders the index page' do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe '#new' do
		it 'allows for a new session to be created' do
			session = Session.new
			expect { session.save }.to change { Session.count }.by(1)
		end

		it 'renders the new page' do
			get :new
			expect(response). to render_template("new")
		end
	end

	describe '#create' do
		xit 'creates all sessions for a particular day' do
			# expect { session.create }.to change { Session.count }.by(14)
		end

		xit 'redirects to the counselor homepage/index' do
			# post :create, session: {date: '2014-06-07', start_time: '10:00', end_time: '10:30', available: 'true', counselor_id: '1' }
			expect(response).to redirect_to :index
		end
	end


	describe '#show' do
		it 'finds all the sessions on the current day' do
		end
	end


	describe '#update' do
	end

end