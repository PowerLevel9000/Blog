require 'rails_helper'

RSpec.describe Post, type: :model do
  before :all do
    @user_one = User.create(name: 'Jack', photo: '', bio: 'es dunia ka papa')
    @post_one = Post.create(title: 'Love', text: 'love is waste of time until A true love', author_id: @user_one.id)
    @comment_one = Comment.create(author_id: @user_one.id, post_id: @post_one.id, text: 'anything u want')
    @comment_two = Comment.create(author_id: @user_one.id, post_id: @post_one.id, text: 'anything u want 1')
    @comment_three = Comment.create(author_id: @user_one.id, post_id: @post_one.id, text: 'anything u want 2')
    @comment_four = Comment.create(author_id: @user_one.id, post_id: @post_one.id, text: 'anything u want 3')
    @comment_five = Comment.create(author_id: @user_one.id, post_id: @post_one.id, text: 'anything u want 4')
    @comment_six = Comment.create(author_id: @user_one.id, post_id: @post_one.id, text: 'anything u want 4')
    @like_one = Like.create(author_id: @user_one.id, post_id: @post_one.id)
    @like_two = Like.create(author_id: @user_one.id, post_id: @post_one.id)
    @like_three = Like.create(author_id: @user_one.id, post_id: @post_one.id)
    @like_four = Like.create(author_id: @user_one.id, post_id: @post_one.id)
    @like_five = Like.create(author_id: @user_one.id, post_id: @post_one.id)
    @like_six = Like.create(author_id: @user_one.id, post_id: @post_one.id)
  end

  after :all do
    @comment_one.destroy
    @comment_two.destroy
    @comment_five.destroy
    @comment_three.destroy
    @comment_four.destroy
    @comment_six.destroy
    @like_one.destroy
    @like_two.destroy
    @like_three.destroy
    @like_four.destroy
    @like_five.destroy
    @like_six.destroy
    @post_one.destroy
    @user_one.destroy
  end

  describe 'Comment testing along with associations' do
    it 'should increment coumnet counter when coment created ' do
      expect(@post_one.comments.count).to eq(5)
    end

    it 'should decrement comment counter when coment destroyed' do
      @comment_one.destroy
      expect(@post_one.comments.count).to eq(5)
    end

    it 'should print the five recent comment' do
      expect(@post_one.recent_five_comments).to eq(@post_one.comments[1..6])
    end
  end

  describe 'Like testing along with associations' do
    it 'should like counter increment when like created ' do
      expect(@post_one.likes.count).to eq(6)
    end

    it 'should decrement when like is destroyed ' do
      @like_one.destroy
      expect(@post_one.likes.count).to eq(5)
    end
  end
end
