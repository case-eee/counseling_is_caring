require 'spec_helper'

describe UsersController do 

	describe 'GET #new' do
		it 'shows the new user form' do
			get :new
			expect(response.status).to eq 200 
		end
	end


	describe '#create' do
		it 'saves a new user to the database' do
			post :create, user: {:first_name => "Penelope", :last_name => "Mitchell", :email => "p@p.com", :role => 'student', :cohort => 'nighthawk', :password => "pass"}
			expect(response.status).to eq 302
		end
		it 'redirects to login page if user is saved' do
			post :create, user: {:first_name => "Penelope", :last_name => "Mitchell", :email => "p@p.com", :role => 'student', :cohort => 'nighthawk', :password => "pass"}
			expect(response).to redirect_to :root
		end
		it 'redirects to signup if registering a new user fails' do
			post :create, user: {:last_name => "Mitchell", :role => 'student', :cohort => 'nighthawk', :password => "pass"}
			expect(response).to redirect_to :signup
		end	
	end


end