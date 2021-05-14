class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end
  
  def create?
    true
    # record.service.order.user = user
  end

  def destroy?
    record.user == user
  end
end
