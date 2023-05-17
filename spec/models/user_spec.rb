require 'rails_helper'

RSpec.describe User, type: :model do
  let(:userone) {User.create(name: "jack", photo: '', bio: "es dunia ka papa")}
  it "should give the name of user variable's value" do
    expect(userone.name).to eq('jack')
    expect(userone.bio).to eq('es dunia ka papa')
    expect(userone.photo).to eq('')
  end

  it 'should print the post 0' do
    expect(userone.posts[0]).to be_falsy 
  end

  it 'should print the post 0' do
    expect(userone.posts_counter).to be_falsy 
  end
end
