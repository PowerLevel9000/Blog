require 'rails_helper'
RSpec.describe '/users/', type: :system do
  before :all do
    @users = User.includes(:posts).order(updated_at: :asc)
  end

  it 'has other users' do
    visit users_path
    @users.each do |user|
      expect(page).to have_content(user.name)
    end
  end
end
