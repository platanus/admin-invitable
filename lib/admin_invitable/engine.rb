module AdminInvitable
  class Engine < ::Rails::Engine
    isolate_namespace AdminInvitable

    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "ativeadmin_invitable_patch" do |_app|
      require_relative "activeadmin_invitable_patch"
    end
  end
end
