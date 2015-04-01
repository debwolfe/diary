# require pry-debugger if development? || test?

require 'spec_helper'
#  config.before do
# User.delete_all
# end

  describe 'users controller' do

    let(:user){User.create!}

    describe 'GET /v1/users' do

      # context 'when my api token is invalid' do
      #   let :api_key{ '12335'}

      #   it 'should render 401 unauthorized' do
      #   end
      # end
      # end

      it 'should render all users as json' do
        get '/v1/users'
        expect(last_response).to eq User.all.to_json
        expect(users.first).to eq JSON.parse(User.first.to_json)

        end

        #-- http method
        # -- path | url
        # - post body params
        # - whats in the database
        # - misc in memeory

    end

end