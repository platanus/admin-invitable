class AdminInvitable::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def patch_active_admin
    template "active_admin_invitable_patch.rb", "config/initializers/active_admin_invitable_patch.rb"
  end

  def override_default_views
    copy_file "edit.html.erb", "app/views/devise/invitations/edit.html.erb"
    copy_file "invitation_instructions.html.erb", "app/views/devise/mailer/invitation_instructions.html.erb"
  end
end
