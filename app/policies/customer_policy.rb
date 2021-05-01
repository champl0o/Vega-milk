class CustomerPolicy < ApplicationPolicy
    def index?
        true
    end

    def show?
        true
    end

    def create?
        true
    end

    def update?
        true
    end

    def export?
        true
    end

    def custom_action?
        true
    end
end