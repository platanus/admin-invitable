module ::ActiveAdmin
  module Devise
    class << self
      alias_method :old_controllers, :controllers
      def controllers
        old_controllers.merge({invitations: "active_admin/devise/invitations"})
      end
      alias_method :old_controllers_for_filters, :controllers_for_filters
      def controllers_for_filters
        old_controllers_for_filters + [InvitationsController]
      end
    end
    class InvitationsController < ::Devise::InvitationsController
      include ::ActiveAdmin::Devise::Controller
    end
  end
end
