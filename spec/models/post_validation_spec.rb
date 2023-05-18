require 'rails_helper'

RSpec.describe Post, type: :model do
  before :all do
    @user_one = User.create(name: 'Jack', photo: '', bio: 'es dunia ka papa')
    @post_one = Post.create(title: 'Love', text: 'love is waste of time until A true love', author: @user_one)
    @comment_one = Comment.create(author: @user_one, post: @post_one, text: 'anything u want')
    @like_one = Like.create(author: @user_one, post: @post_one)
  end

  after :all do
    User.destroy_all
    Comment.destroy_all
    Post.destroy_all
    Like.destroy_all
  end

  describe 'Post validation' do
    it 'validates that post title is present' do
      @post_one.title = nil
      expect(@post_one).not_to be_valid
    end

    it 'validates that post title is not too long' do
      @post_one.title = 'abcde' * 51
      expect(@post_one).not_to be_valid
    end

    it 'Comment counter must not be nil' do
      @post_one.comments_counter = nil
      expect(@post_one).not_to be_valid
    end

    it 'like counter not be nill' do
      @post_one.likes_counter = nil
      expect(@post_one).not_to be_valid
    end

    it 'Comments counter must be greater than or equal to 0' do
      @post_one.comments_counter = -5
      expect(@post_one).not_to be_valid
    end

    it 'likes counter must be greater than or equal to 0' do
      @post_one.likes_counter = -5
      expect(@post_one).not_to be_valid
    end
  end
end
