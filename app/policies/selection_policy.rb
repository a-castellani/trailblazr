class SelectionPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all
    end
  end

  def destroy?
    true
  end

  def create?
    true # must be a collaborator with editorial role
  end

  def new?
    true # must be a collaborator with editorial role
  end
end
