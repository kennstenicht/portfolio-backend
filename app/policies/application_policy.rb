# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    scope.where(id: record.id).exists?
  end

  def create?
    user
  end

  def new?
    create?
  end

  def update?
    user
  end

  def edit?
    update?
  end

  def destroy?
    user
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      new_scope = scope.all

      new_scope = new_scope.where(visible: true) if user.nil?

      new_scope
    end
  end
end
