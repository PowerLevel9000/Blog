require 'rails_helper'
RSpec.describe '/users/', type: :system do
  before :all do
    User.destroy_all
    @user_one = User.create(name: 'Jalhandar-1', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-1 Mahadev')
    @user_two = User.create(name: 'Jalhandar-2', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-2 Mahadev')
    @user_three = User.create(name: 'Jalhandar-3', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-3 Mahadev')
    @user_four = User.create(name: 'Jalhandar-4', photo: 'image-1', bio: 'Mahadev Shivansh Jalhander-4 Mahadev')
    @post_one = Post.create(title: 'Dev Asur-1 youdh', text: 'Shivansh ka Krodh', author: @user_one)
    @post_three = Post.create(title: 'Asur youdh-1', text: '# Asur krodh me Agni', author: @user_one)
    @post_two = Post.create(title: 'Dev Asur-2', text: '# Shivansh ne indra ko', author: @user_one)
    @post_four = Post.create(title: 'Asur youdh-2', text: '# Asur krodh me Agni', author: @user_one)
    @post_five = Post.create(title: 'Asur youdh-3', text: '# Asur krodh me Agni', author: @user_one)
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

  describe 'user integration test for index page' do
    it 'has other users' do
      visit users_path
      @users.each do |user|
        expect(page).to have_content(user.name)
      end
    end

    it 'has each users pic' do
      visit users_path
      @users.each do |_user|
        expect(page).to have_css("img[src*='image-1']")
      end
    end

    it 'has each users post count' do
      visit users_path
      @users.each do |user|
        if user.posts_counter > 0
          expect(page).to have_content("has #{user.posts_counter} posts")
        else
          expect(page).to have_content('No Post 📪 Yet')
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
  describe 'user integration page for show page' do
    it "I can see the user's profile picture" do
      visit user_path(@user_one)
      expect(page).to have_css("img[src*='image-1']")
    end

    it "I can see the user's username" do
      visit user_path(@user_one)
      expect(page).to have_content(@user_one.name)
    end

    it 'I can see the number of posts the user has written' do
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
      visit user_path(@user_one)
      expect(page).to have_link('See all Posts')
    end


    it "When I click a user's post, it redirects me to that post's show page" do
      visit user_path(@user_one)
      post = @user_one.last_three[0]
      click_link(post.title)
      expect(page).to have_current_path(user_post_path(@user_one, post))
    end

    it "When I click to see all posts, it redirects me to the user's post's index page." do
      visit user_path(@user_one)
      click_link('See all Posts')
      expect(page).to have_current_path(user_posts_path(@user_one))
    end
  end

  describe 'User post index page' do
    it "I can see the user's profile picture." do
      visit user_posts_path(@user_one)
      expect(page).to have_css("img[src*='image-1']")
    end

    it "I can see the user's username." do
      visit user_posts_path(@user_one)
      expect(page).to have_content(@user_one.name)
    end

    it 'I can see the number of posts the user has written.' do
      visit user_posts_path(@user_one)
      expect(page).to have_content("has #{@user_one.posts_counter} posts")
    end

    it "I can see a post's title" do
      visit user_posts_path(@user_one)
      posts = @user_one.posts
      posts.each do |post|
        expect(page).to have_content(post.title)
      end
    end

    it "I can see some of the post's body" do
      visit user_posts_path(@user_one)
      posts = @user_one.posts
      posts.each do |post|
        expect(page).to have_content(post.text[2..6])
      end
    end

    it 'I can see the first comments on a post' do
      visit user_posts_path(@user_one)
      posts = @user_one.posts
      posts.each do |post|
        expect(page).to have_content(post.comments[-1].text) if post.comments_counter > 0
      end
    end

    it 'I can see how many comments a post has.' do
      visit user_posts_path(@user_one)
      posts = @user_one.posts
      posts.each do |post|
        expect(page).to have_content('Comments')
        if post.comments_counter > 0
          expect(page).to have_content(post.comments_counter)
        else
          expect(page).to have_content(0)
        end
      end
    end

    it 'I can see how many likes a post has.' do
      visit user_posts_path(@user_one)
      posts = @user_one.posts
      posts.each do |post|
        expect(page).to have_content('Likes')
        if post.comments_counter > 0
          expect(page).to have_content(post.likes_counter)
        else
          expect(page).to have_content(0)
        end
      end
    end

    it 'I can see a section for pagination' do
      visit user_posts_path(@user_one)
      expect(page).to have_content("Pagination")
    end

    it "When I click on a post, it redirects me to that post's show page." do
      @user_one.posts.each do |post|
        visit user_posts_path(@user_one)
        click_link(post.title)
        expect(page).to have_current_path(user_post_path(@user_one, post))
      end
    end
  end

  describe "Post show page" do
    
    it "I can see the post's title" do
      visit user_post_path(@user_one, @post_one)
      expect(page).to have_content(@post_one.title)
    end

    it "I can see who wrote the post" do
      visit user_post_path(@user_one, @post_one)
      expect(page).to have_content(@post_one.author.name)
    end

    it "I can see how many comments it has." do
      visit user_post_path(@user_one, @post_one)
      expect(page).to have_content(@post_one.comments_counter)
    end

    it "I can see how many likes it has." do
      visit user_post_path(@user_one, @post_one)
      expect(page).to have_content(@post_one.likes_counter)
    end

    it "I can see the post body." do
      visit user_post_path(@user_one, @post_one)
      expect(page).to have_content(@post_one.text)
    end

    it "I can see the username of each commentor." do
      visit user_post_path(@user_one, @post_one)
      @post_one.comments.each do |comment|
        expect(page).to have_content(comment.author.name)
      end
    end

    it "I can see the comment each commentor left." do
      visit user_post_path(@user_one, @post_one)
      @post_one.comments.each do |comment|
        expect(page).to have_content(comment.text)
      end
    end
  end
end
