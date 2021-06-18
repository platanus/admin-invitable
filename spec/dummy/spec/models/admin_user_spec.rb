require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  let!(:admin_user) { create(:admin_user) }

  it { expect(admin_user).to be_a(AdminUser) }
end
