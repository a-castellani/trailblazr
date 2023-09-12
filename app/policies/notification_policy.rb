class NotificationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(recipient: user)
    end
  end

  def toggle_read?
    record.recipient == user
  end
end
