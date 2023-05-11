require 'rails_helper'

RSpec.shared_context 'with authenticated user' do
  let(:current_user) { create(:user) }

  before(:each) do
    sign_in current_user
  end
end
