require 'spec_helper'

describe LoginController do

	describe '#new' do
		it 'renders the new form'
	end

	describe '#create' do
		it 'creates a user object if the user is authenticated'
		it 'sets a session with the user id'
		it 'redirects to appointments home if the user role is a student'
		it 'redirects to the counselor home if the user role is a counselor'
		it 'renders the new form and throws an error if the username or password is incorrect'
	end

	describe '#destroy' do
		it 'clears the session for the user id'
		it 'redirects to the login home'
	end

end 