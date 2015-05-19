class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, List
    can :manage, Task
  end
end
