require 'spec_helper'

describe UsersController do 

	describe 'GET #new' do
		it 'renders the new form'
	end


	describe '#create' do
		it 'saves a new user to the database'
		it 'redirects to login page if user is saved'
		it 'redirects to signup if registering a new user fails'
	end


end