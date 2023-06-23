# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can %i[create destroy], Post, author_id: user.id
    can %i[create destroy], Comment, author_id: user.id

    return unless user.admin?

    can :manage, :all
  end
end
