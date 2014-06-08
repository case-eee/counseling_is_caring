require 'spec_helper'

describe Counselor::SessionsController do 

	describe '#index' do
		it 'renders the index page'
	end

	describe '#new' do
		it 'allows for a new session to be created'
		it 'renders the new page'
	end

	describe '#create' do
		it 'creates all sessions for a particular day'
		it 'redirects to the counselor homepage/index'
	end

	describe '#show' do
		it 'finds all the sessions on the current day'
	end



end
