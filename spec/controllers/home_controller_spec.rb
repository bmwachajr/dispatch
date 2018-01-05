require 'rails_helper'
require 'spec_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    before :each do
      # This simulates an anonymous user
      login_with create( :user )
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
