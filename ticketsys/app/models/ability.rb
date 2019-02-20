class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
     if user.email == "divackc@yahoo.com" # you can add any condition
        can :manage, :all
     end
    if user.superadmin_role?
      can :manage, :all
      can :dashboard, all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
    end
    if user.supervisor_role?
      can :manage, User
    end
  end
end