class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
    # record.service.order.user = user
  end

  def destroy?
    record.service.user == user
  end
end
