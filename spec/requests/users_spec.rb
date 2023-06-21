require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before :all do
    user_attributes = {
      name: 'user-1',
      photo: 'image-1',
      bio: 'World should obey my orders'
    }
    @user = User.create! user_attributes
  end

  after :all do
    User.destroy_all
  end

  describe 'GET /index' do
    it ' response status should be  correct' do
      get users_url
      expect(response).to be_successful
    end

    it 'correct template should be  rendered' do
      get users_url
      expect(response).to render_template 'users/index'
    end

    it 'response body should have placeholder text' do
      get users_url
      expect(response.body).to include('user-1')
    end
  end
  describe 'GET /user=[:id]' do
    it ' response status should be  correct' do
      get user_url(@user)
      expect(response).to be_successful
    end

    it 'correct template should be  rendered' do
      get user_url(@user)
      expect(response).to render_template 'users/show'
    end

    it 'response body should have placeholder text' do
      get user_url(@user)
      expect(response.body).to include("#{@user.name}")
      expect(response.body).to include("#{@user.bio}")
      expect(response.body).to include("#{@user.posts_counter}")
    end
  end
end
