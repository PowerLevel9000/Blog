require 'rails_helper'
RSpec.describe '/users/', type: :system do
  before :all do
    User.destroy_all
    @user_one = User.create(name: 'Jalhandar-1', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-1 Mahadev')
    @user_two = User.create(name: 'Jalhandar-2', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-2 Mahadev')
    @user_three = User.create(name: 'Jalhandar-3', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-3 Mahadev')
    @user_four = User.create(name: 'Jalhandar-4', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-4 Mahadev')
    @post_one = Post.create(title: 'Dev Asur youdh', text: '# Shivan ka Krodh', author: @user_one)
    @post_one = Post.create(title: 'Dev Asur', text: '# Shivansh ne indra ko', author: @user_one)
    @post_one = Post.create(title: 'Asur youdh', text: '# Asur krodh me Agni', author: @user_one)
    @post_one = Post.create(title: 'Asur youdh', text: '# Asur krodh me Agni', author: @user_one)
    @post_one = Post.create(title: 'Asur youdh', text: '# Asur krodh me Agni', author: @user_one)
    @comment_one = Comment.create(author: @user_one, post: @post_one, text: 'anything u want')
    @comment_two = Comment.create(author: @user_two, post: @post_one, text: 'anything u want 1')
    @comment_three = Comment.create(author: @user_three, post: @post_one, text: 'anything u want 2')
    @comment_four = Comment.create(author: @user_four, post: @post_one, text: 'anything u want 3')
    @comment_five = Comment.create(author: @user_four, post: @post_one, text: 'anything u want 4')
    @comment_six = Comment.create(author: @user_four, post: @post_one, text: 'anything u want 4')
    @like_one = Like.create(author: @user_one, post: @post_one)
    @like_two = Like.create(author: @user_two, post: @post_one)
    @like_three = Like.create(author: @user_three, post: @post_one)
    @like_four = Like.create(author: @user_one, post: @post_one)
    @like_five = Like.create(author: @user_four, post: @post_one)
    @like_six = Like.create(author: @user_one, post: @post_one)
    @users = User.all
  end

  describe "user integration test for index page" do
     it 'has other users' do
    visit users_path
    @users.each do |user|
      expect(page).to have_content(user.name)
    end
  end

  it 'has each users pic' do
    visit users_path
    @users.each do |user|
      expect(page).to have_css("img[src*='image-1']")
    end
  end

  it 'has each users post count' do
    visit users_path
    @users.each do |user|
      if user.posts_counter > 0
        expect(page).to have_content("has #{user.posts_counter} posts") 
      else
        expect(page).to have_content("No Post 📪 Yet") 
      end
    end
  end

  it "When I click on a user, I am redirected to that user's show page" do
    @users.each do |user|
      visit users_path
      click_link(user.name)
      expect(page).to have_current_path(user_path(user))
    end
  end
  end
  describe "user integration page for show page" do 

    it "I can see the user's profile picture" do
      visit user_path(@user_one)
      expect(page).to have_css("img[src*='image-1']")
    end

    it "I can see the user's username" do
      visit user_path(@user_one)
      expect(page).to have_content(@user_one.name)
    end

    it "I can see the number of posts the user has written" do
      visit user_path(@user_one)
      expect(page).to have_content(@user_one.posts_counter)
    end

    it "I can see the user's bio." do
      visit user_path(@user_one)
      expect(page).to have_content(@user_one.bio)
    end

    it "I can see the user's first 3 posts." do
      visit user_path(@user_one)
      
      @user_one.last_three.each do |post|
        expect(page).to have_content(post.title)
      end
      
    end

    it "I can see a button that lets me view all of a user's posts" do
      visit user_path(@user)
      expect(page).to have_link("See all Posts")
    end
    

    it "When I click a user's post, it redirects me to that post's show page" do
      visit user_path(@user)
      post = @user.posts.first
      click_link(post.title)
      expect(page).to have_current_path(user_post(@user, post))
    end

    it "When I click to see all posts, it redirects me to the user's post's index page." do
      visit user_path(@user)
      click_link('See all Posts')
      expect(page).to have_current_path(user_posts(@user))
    end
  end
end
