class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # If users can see all reviews
      # scope.where(user: user) # If users can only see their reviews
      # scope.where("name LIKE 't%'") # If users can only see reviews starting with `t`
      # ...
    end

    def show?
      true
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
      # record: the review passed to the `authorize` method in controller
      # user: the `current_user` signed in with Devise
    end
  end
end
