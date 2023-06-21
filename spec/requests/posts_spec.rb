require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  before :all do
    @user = User.create(name: 'user-1', photo: 'image-1', bio: 'I am the user one')
    @post = Post.create(author: @user, title: 'Shiv Shambhu', text: "i don&#39;t have start neigther end")
  end

  after :all do
    User.destroy_all
    Post.destroy_all
  end

  describe 'Get /users/[:id]/posts' do
    it 'response status should be  correct' do
      get user_posts_url(@user)
      expect(response).to be_successful
    end

    it 'correct template should be  rendered' do
      get user_posts_url(@user)
      expect(response).to render_template 'posts/index'
    end
  end

  describe 'Get /users/[:id]/posts/[:id]' do
    it 'response status should be  correct' do
      get user_post_url(@user, @post)
      expect(response).to be_successful
    end

    it 'correct template should be  rendered' do
      get user_post_url(@user, @post)
      expect(response).to render_template 'posts/show'
    end

    it 'response body should have placeholder text' do
      get user_post_url(@user, @post)
      expect(response.body).to include("#{@post.title}")
      expect(response.body).to include("#{@post.text}")
      expect(response.body).to include("#{@post.likes_counter}")
      expect(response.body).to include("#{@post.comments_counter}")
    end
  end
end
