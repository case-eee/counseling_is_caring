require 'spec_helper'

describe LoginController do

	describe '#new' do
		it 'renders the new form' do
			get :new
			expect(response.status).to eq 200 
		end
	end

	describe '#create' do
		let(:user) { User.create(:first_name => "Penelope", :last_name => "Mitchell", :email => "p@p.com", :role => 'student', :cohort => 'nighthawk', :password => "pass")}
    	
   
		xit 'creates a user object if the user is authenticated' do
			puts user.email
			puts user.password
			@new_user = User.authenticate(user.email, 'pass')
			post :create, @new_user
			expect(@new_user).to be_a(User)
		end
			
		xit 'sets a session with the user id' do

		end


		xit 'redirects to appointments home if the user role is a student' do
			post :create, :user
			expect(response).to redirect_to :appointments
		end
		it 'redirects to the counselor home if the user role is a counselor'
		it 'renders the new form and throws an error if the username or password is incorrect'
	end

	describe '#destroy' do
		it 'clears the session for the user id'
		it 'redirects to the login home'
	end

end 