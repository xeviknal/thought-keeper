class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :manage, List
      can :manage, Thought
    end
  end
end
