# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def index?
    user
  end

  def show?
    scope.where(id: record.id).exists? && user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
