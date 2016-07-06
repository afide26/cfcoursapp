class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :read, :products
      can [:read, :update], User, id: user.id
    end
  end
end
