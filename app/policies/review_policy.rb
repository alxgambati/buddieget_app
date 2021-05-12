class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.service.order.user = user
  end

  def destroy?
    record.user == user
  end
end
