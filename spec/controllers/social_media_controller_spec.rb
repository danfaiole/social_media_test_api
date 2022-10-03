require 'rails_helper'

RSpec.describe SocialMediaController, :type => :controller do
  describe "GET index" do
    context "when request is done" do
      it "returns 200" do
        get :index

        expect(response).to have_http_status(200)
      end

      it "resposts with json type" do
        get :index

        expect(response.content_type).to eq "application/json; charset=utf-8"
      end
    end
  end
end
