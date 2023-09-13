class CollaborationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user || record.itinerary.collaborations.where(role: "owner").first.user == user
    # record.user.role == "admin"
  end
end
