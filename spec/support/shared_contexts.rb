RSpec.shared_context 'Authenticated User' do 
    let!(:user) { create(:user) }
    before do
      auth_headers = user.create_new_auth_token
      request.headers.merge! auth_headers
    end
end