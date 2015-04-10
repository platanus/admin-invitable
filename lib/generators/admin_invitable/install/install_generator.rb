class AdminInvitable::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def override_default_views
    copy_file "edit.html.erb", "app/views/devise/invitations/edit.html.erb"
    copy_file "invitation_instructions.html.erb", "app/views/devise/mailer/invitation_instructions.html.erb"
  end
end
