class Ability
  include CanCan::Ability

  def initialize(user)
    # Public (guest) permissions
    can :read, Post
    can :read, User
    can :read, Like
    can :read, Comment

    return unless user.present? # Only proceed if the user is authenticated

    # Permissions for authenticated users
    can %i[create destroy read edit], Post, author_id: user.id
    can %i[create destroy read], Comment, author_id: user.id

    return unless user.admin?

    can :manage, :all
  end
end
