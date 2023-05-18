require 'rails_helper'

RSpec.describe User, type: :model do
  before :all do
    @user_one = User.create(name: "jack", photo: '', bio: "es dunia ka papa")
    @user_one.save
  end

  after :all do
    User.destroy_all
  end

  it "should give the name of user variable's value" do
    puts @user_one.inspect, 'from user spec' 
    expect(@user_one.name).to eq('jack')
    expect(@user_one.bio).to eq('es dunia ka papa')
    expect(@user_one.photo).to eq('')
  end

  it 'should print the post 0' do
    expect(@user_one.posts[0]).to be_falsy 
  end

  it 'should print the post_counter 0' do
    expect(@user_one.posts_counter).to be(0) 
  end

  describe "User Validation checking" do
    it 'Name must not be blank' do
      @user_one.name = nil
      expect(@user_one).not_to be_valid  
    end

    it 'Posts counter should not be nill' do
      @user_one.posts_counter = nil
      expect(@user_one).not_to be_valid  
    end

    it 'Posts counter must not be negative just >=0' do
      @user_one.posts_counter = -5
      expect(@user_one).not_to be_valid  
    end
  end
  
end
