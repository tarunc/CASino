require 'spec_helper'

describe CASino::LoginAttemptsController do
  routes { CASino::Engine.routes }

  describe 'GET #index' do
    context 'with ticket granting ticket' do
      let(:ticket_granting_ticket) { FactoryBot.create :ticket_granting_ticket }
      let(:login_attempt) { FactoryBot.create :login_attempt, user: ticket_granting_ticket.user }
      let(:old_login_attempt) do
        FactoryBot.create :login_attempt, user: ticket_granting_ticket.user, created_at: 10.weeks.ago
      end

      before do
        sign_in(ticket_granting_ticket)
        login_attempt.touch
        FactoryBot.create :login_attempt
      end

      it 'assigns current users login attempts @login_attempts' do
        get :index

        expect(assigns(:login_attempts)).to eq([login_attempt.all, old_login_attempt.all])
      end
    end

    context 'without a ticket-granting ticket' do
      it 'redirects to the login page' do
        get :index

        response.should redirect_to(login_path)
      end
    end
  end
end
