class ItineraryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    record.users.include?(user)
  end

  def create?
    true
  end

  def destroy?
    record.collaborations.where(user: user, role: "owner")
  end

  def edit?
    true
  end

  def update?
    true
  end
end
