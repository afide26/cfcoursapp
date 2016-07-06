class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, :products
      cannot :create, :products
      cannot :read, :users
    end
  end
end
