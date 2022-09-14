<<<<<<< HEAD
# class ChildPolicy < ApplicationPolicy
#   class Scope < Scope
#     def resolve
#       # scope.all # If users can see all children
#       scope.where(user: user) # If users can only see their children
#       # scope.where("name LIKE 't%'") # If users can only see children starting with `t`
#       # ...
#     end

#     def show?
#       parent?
#     end

#     def create?
#       parent?
#     end

#     def update?
#       parent?
#     end

#     def destroy?
#       parent?
#     end

#     private

#     def parent?
#       record.user == user
#       # record: the child passed to the `authorize` method in controller
#       # user: the `current_user` signed in with Devise
#     end
#   end
# end
=======
class ChildPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all # If users can see all children
      scope.where(user: user) # If users can only see their children
      # scope.where("name LIKE 't%'") # If users can only see children starting with `t`
      # ...
    end
  end

  def show?
    parent?
  end

  def create?
    parent?
  end

  def update?
    parent?
  end

  def destroy?
    parent?
  end

  private

  def parent?
    record.user == user
    # record: the child passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end
end
>>>>>>> cd20f4d (Fix pundit issue)
