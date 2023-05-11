require 'rails_helper'

RSpec.describe PurchasesController, type: :controller do
  describe 'GET #index' do
    context 'When user is not signed in' do
      subject!(:http_request) { get :index }

      it 'redirects to sign in page' do
        expect(response).to have_http_status(:found)
      end
    end

    context 'When fetching all purchases' do
      include_context 'with authenticated user'
      subject!(:http_request) { get :index }

      let!(:purchases) { create_list(:purchase, 3) }

      it 'responds' do
        byebug
        expect(response).to have_http_status(:success)
      end
    end
  end
end
