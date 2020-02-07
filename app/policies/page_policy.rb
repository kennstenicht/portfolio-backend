# frozen_string_literal: true

class PagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
